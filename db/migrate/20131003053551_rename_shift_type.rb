class RenameShiftType < ActiveRecord::Migration
  def up
  	rename_column :shifts, :type, :shift_type
  end

  def down
  	rename_column :shifts, :shift_type, :type
  end
end
