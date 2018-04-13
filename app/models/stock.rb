class Stock < ApplicationRecord
  belongs_to :item
  has_many :cron_infos

  def self.catch_and_save_all_price
    Stock.all.each do |s|
      parts_price = s.catch_price
      s.cron_infos.create(price: parts_price)
    end
    NotificationMailer.got_all_price.deliver_now
  end

  def catch_price
    doc = Nokogiri::HTML(open(self.url))
    doc.xpath(self.position)&.text&.gsub(/[^0-9]+/,'')&.to_i
  end
end
