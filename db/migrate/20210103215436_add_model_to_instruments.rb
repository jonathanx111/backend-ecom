class AddModelToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :model, :string
  end
end
