class AddPositionToStoks < ActiveRecord::Migration[5.0]
  def change
    add_column :stoks, :position, :string
  end
end
