class UrlsController < ApplicationController
  def index
    @urls = Url.includes(:stats)
  end

  def create
    @response = {status: false, message: '', data: ''}
    url       = Url.new(url_params)
    if url.save
      ExpireUrlWorker.perform_in(url.created_at + 1.month, url.id)
      @response = {status: true, message: 'Successfully created url', data: url}
    else
      @response = {status: false, message: 'Something went wrong.', data: ''}
    end
  end

  def show
    url = Url.active.find_by(short_url: params[:short_url])
    if url.present?
      country = ISO3166::Country.find_country_by_alpha2(request.location.country)
      country_name=country.present? ? country.name : "N-A"
      Stat.create({url_id: url.id, ip_address: request.remote_ip, country: country_name, region: request.location.region})
      redirect_to url.original_url and return
    else
      render :file => "#{Rails.root}/public/404.html"
    end
  end

  private

  def url_params
    params.require(:url).permit(:id, :original_url, :short_url)
  end
end
