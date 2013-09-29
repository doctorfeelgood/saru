class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
