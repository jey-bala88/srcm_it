class CreateOthers < ActiveRecord::Migration[5.0]
  def change
    create_table :others do |t|
      t.string :asset_tag
      t.string :host_name
      t.string :make
      t.string :model
      t.string :serial_number
      t.string :department
      t.string :current_location
      t.string :warranty_status
      t.datetime :warranty_start_date
      t.datetime :warranty_end_date
      t.string :invoice_number
      t.string :status
      t.string :cost
      t.datetime :verified_on
      t.string :verified_by
      t.string :remarks
      t.text :history
      t.boolean :is_active
      t.string :purchased_at
      t.string :entity
      t.string :device_type
      t.text :raw_data
      t.boolean :is_donation

      t.timestamps
    end
  end
end
