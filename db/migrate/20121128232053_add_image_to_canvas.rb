class AddImageToCanvas < ActiveRecord::Migration
  def change
    add_column :canvas, :image, :string
  end
end
