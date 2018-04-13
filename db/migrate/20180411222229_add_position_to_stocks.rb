class AddPositionToStocks < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :position, :string
  end
end
