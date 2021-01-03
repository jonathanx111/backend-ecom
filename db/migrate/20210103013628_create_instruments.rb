class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :type
      t.string :condition
      t.string :year
      t.string :picture_url
      t.integer :price
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
