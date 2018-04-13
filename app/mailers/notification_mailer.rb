class NotificationMailer < ApplicationMailer
  def got_all_price
    @rank_info = Item.make_hourly_rank_all_item
    mail to: 'sunagakanntawork@gmail.com', subject: "最新の自転車部品の値段だよ〜ん"
  end
end
