class ChangeTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :instruments, :type, :type_of
  end
end
