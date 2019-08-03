AssetMake.find_or_create_by(name: 'make1')
AssetMake.find_or_create_by(name: 'make2')


Department.find_or_create_by(name: 'dept1')
Department.find_or_create_by(name: 'dept2')
Department.create(name: 'dept3')


Center.find_or_create_by(name: 'Center1')
Center.find_or_create_by(name: 'Center2')
Center.find_or_create_by(name: 'Center3')

AdminUser.create!(email: 'admin@admin.com', password: 'password', password_confirmation: 'password') if Rails.env.development?AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?