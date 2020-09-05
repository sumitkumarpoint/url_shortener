module ApplicationHelper
  def top_countries(stats)
    country_array = stats.where.not(country: "N-A").pluck(:country)
    if country_array.present?
      result        = {}
      country_array.uniq.each { |element| result[element] = country_array.count(element) }
      Hash[result.sort_by { |k, v| v }.reverse[0..9]].keys.join(',')
    else
      "N-A"
    end
  end
end
