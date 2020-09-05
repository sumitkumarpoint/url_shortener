class ExpireUrlWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(url_id)
    Url.update(url_id,status: false)
 end

end
