class AssetDetail < ApplicationRecord
	has_one :desktop_server_laptop
	has_one :nas
	has_one :network_device
	has_one :printer
end
