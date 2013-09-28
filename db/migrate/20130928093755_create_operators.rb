class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.integer :employee_number
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :cellphone_number

      t.timestamps
    end
  end
end
