class CreateLaptops < ActiveRecord::Migration[5.0]
  def change
    create_table :laptops do |t|
      t.string :asset_tag
      t.string :host_name
      t.string :make
      t.string :model
      t.string :serial_number
      t.string :mac
      t.string :monitor_size
      t.string :current_location
      t.string :os
      t.string :os_version
      t.string :os_edition
      t.string :office
      t.string :office_version
      t.string :office_edition
      t.string :anti_virus
      t.string :warranty_status
      t.datetime :warranty_start_date
      t.datetime :warranty_end_date
      t.string :invoice_number
      t.string :status
      t.string :cost
      t.datetime :verified_on
      t.string :verified_by
      t.string :department
      t.string :cpu_make
      t.string :cpu_model
      t.string :cpu_speed
      t.string :memory
      t.string :hard_disk
      t.string :entity
      t.string :remarks
      t.text :history
      t.string :tally_version
      t.string :tally_serial_number
      t.string :tally_scratch_key
      t.boolean :is_active
      t.string :purchased_at
      t.boolean :is_donation

      t.timestamps
    end
  end
end
