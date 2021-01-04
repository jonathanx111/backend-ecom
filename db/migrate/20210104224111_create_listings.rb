class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :buyer_id
      t.integer :seller_id
      t.integer :instrument_id
      t.datetime :datetime_sold

      t.timestamps
    end
  end
end
