class AddEditToolsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :border, :boolean
    add_column :orders, :rolled_canvas, :boolean
    add_column :orders, :fancy_edges, :boolean
  end
end
