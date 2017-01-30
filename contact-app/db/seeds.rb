# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create users for devise

Member.destroy_all

user = Member.new
user.email = 'admin.contacts@mail.com'
# user.name = 'Admin Contacts'
# user.first_login = false
user.password = '123456'
user.password_confirmation = '123456'
user.save!

# user = User.create! :name => 'John Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

# user = User.new(
#   :email                 => "admin@xxxxx.xxx",
#   :password              => "123456",
#   :password_confirmation => "123456"
# confirmed_at user attribute as Time.now.utc
# )
# user.skip_confirmation!
# user.save!

# User.create!([
#   {email: "testadmin@mvmanor.co.uk", password: "testadminuser", password_confirmation: "testadminuser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true},
#   {email: "testuser@mvmanor.co.uk", password: "testuseraccount", password_confirmation: "testuseraccount", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false},
#   {email: "testcustomer@customer.co.uk", password: "testcustomeruser", password_confirmation: "testcustomeruser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false}
# ])


# def triggerSeedUsers
#       p "Starting Seeding Users..."
#       p   "Deleting all users"..
#       User.destroy_all
#       normal_users = [{:email => 'abc@domain.com', :login => "abc_demo", :name => 'abc Demo'}]
#       admin_users = [{:email => 'admin@domain.com', :login => 'abc_admin', :name => 'abc Admin'}]

#       [normal_users,admin_users].each do |user_type|
#         user_type.each do |user|
#           User.create!(:name => user[:name],
#             :login => user[:login],
#             :email => user[:email],
#             :first_login => false,
#             :password => 'P@ssw0rd',
#             :password_confirmation => 'P@ssw0rd'
#             )
#         end
#       end
#       User.where('name LIKE ?', '%demo%').update_all(:is_admin => 0)
#       User.where('name LIKE ?', '%admin%').update_all(:is_admin => 1)
#      end