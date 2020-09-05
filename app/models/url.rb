class Url < ApplicationRecord
  has_many :stats
  before_create :set_short_url
  scope :active , -> { where(status: true) }

  private

  def set_short_url
    self.short_url = generate_token
  end

  def generate_token
    loop do
      short_url = SecureRandom.base36(5)
      break short_url unless Url.where(short_url: short_url).exists?
    end
  end
end
