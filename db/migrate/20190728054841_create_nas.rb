class CreateNas < ActiveRecord::Migration[5.0]
  def change
    create_table :nas do |t|
      t.string :asset_tag
      t.string :host_name
      t.string :make
      t.string :model
      t.string :serial_number
      t.string :hard_disk_bay
      t.string :hard_disk_size
      t.string :hard_disk_count
      t.string :total_disk_size
      t.string :mac
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
      t.string :ip_address
      t.boolean :is_donation

      t.timestamps
    end
  end
end
