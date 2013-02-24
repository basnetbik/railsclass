class AddProgramIdStudent < ActiveRecord::Migration
  def up
  	add_column :students, :program_id, :integer
  end

  def down
  	remove_column :students, :program_id, :integer
  end
end
