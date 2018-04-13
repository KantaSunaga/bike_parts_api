class Item < ApplicationRecord
  has_many :stocks
  enum type: { component_set: 0}

  def self.make_hourly_rank_all_item
    all_item_rank={}
    Item.all.map{|i| all_item_rank["#{i.name}"] = i.make_hourly_cheap_rank}
    all_item_rank
  end

  def make_hourly_cheap_rank
    hourly_cron_infos = self.stocks.map{|s| s.cron_infos.last}
    hourly_cron_infos.sort_by!{|c| c&.price }
  end
end
