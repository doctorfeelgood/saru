class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :number
      t.string :name
      t.integer :partner_id

      t.timestamps
    end
  end
end
