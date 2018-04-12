class Stok < ApplicationRecord
  belongs_to :item
  has_many :cron_infos

  def update_all_stocks
    doc = Nokogiri::HTML(open(self.url))
    price_str = doc.xpath(self.position).text
    price_int = price_str.slice(/[!^0-9]+/).to_i
    s.cron_infos.create(price: price_int)
  end
end
