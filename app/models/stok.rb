class Stok < ApplicationRecord
  belongs_to :item
  has_many :cron_infos

  def self.update_all_stocks
    Stok.all.each do |s|
      doc = Nokogiri::HTML(open(s.url))
      price_str = doc.xpath(s.position).text
      price_int = price_str.slice(/[!^0-9]+/).to_i
      s.cron_infos.create(price: price_int)
    end
  end
end
