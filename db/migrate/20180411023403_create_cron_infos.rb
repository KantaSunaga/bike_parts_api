class CreateCronInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :cron_infos do |t|
      t.integer :stock_id
      t.integer :price

      t.timestamps
    end
  end
end
