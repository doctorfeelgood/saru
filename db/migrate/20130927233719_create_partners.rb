class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :address
    	t.string :phone_number
    	t.string :email
    	t.string :rfc
      	t.timestamps
    end
  end
end
