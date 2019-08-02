class CreateAssetDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :asset_details do |t|
      t.string :searial_number
      t.string :warranty_status
      t.datetime :warranty_start_date
      t.datetime :warranty_end_date
      t.string :invoice_number
      t.string :location
      t.string :in_use
      t.string :cost
      t.datetime :verified_on
      t.string :category
      t.integer :department_id
      t.integer :asset_make_id
      t.string :asset_model
      t.text :comments
      t.string :center
      t.string :asset_tag
      t.string :asset_type

      t.timestamps
    end
  end
end
