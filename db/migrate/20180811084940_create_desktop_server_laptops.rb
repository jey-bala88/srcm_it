class CreateDesktopServerLaptops < ActiveRecord::Migration[5.0]
  def change
    create_table :desktop_server_laptops do |t|
      t.string :host_name
      t.string :cpu_make
      t.string :cpu_model
      t.string :memory
      t.string :hard_disk
      t.string :os_license_key
      t.string :os_version
      t.string :office_version
      t.string :office_license_key
      t.integer :asset_detail_id
      t.string :ip_address

      t.timestamps
    end
  end
end
