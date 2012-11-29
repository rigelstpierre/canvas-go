class CreateCanvas < ActiveRecord::Migration
  def change
    create_table :canvas do |t|
      t.string :orientation
      t.string :size
      t.string :border
      t.boolean :rolled_canvas
      t.boolean :fancy_edges

      t.timestamps
    end
  end
end
