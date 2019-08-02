class CreateNetworkDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :network_devices do |t|
      t.integer :asset_detail_id
      t.string :layer_type
      t.string :type

      t.timestamps
    end
  end
end
