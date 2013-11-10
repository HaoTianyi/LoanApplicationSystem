# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_apps = [{:details => 'test001', :amount => 2000, :app_date => '25-Nov-2011'},
				  {:details => 'test002', :amount => 20, :app_date => '26-Oct-2013'},
				  {:details => 'test003', :amount => 13942, :app_date => '21-Jul-2011', :app_type => 1, :applicant => 'test_user1', :pay_method => "现金"},
			  	  {:details => 'test004', :amount => 3233, :app_date => '10-Aug-2012', :app_type => 0, :applicant => 'test_user1', :pay_method => "汇款"},
				  {:details => 'test005', :amount => 534442, :app_date => '27-Jul-2011', :app_type => 1, :applicant => 'test_user2', :pay_method => "支票"},
			  	  {:details => 'test006', :amount => 78293, :app_date => '23-Aug-2012', :app_type => 0, :applicant => 'test_user2', :pay_method => "银行卡"},
		  	]

test_users = [{:user_name => 'test_user1', :user_pass => 'pass', :is_admin => false},
			  {:user_name => 'test_user2', :user_pass => 'pass', :is_admin => false},
			  {:user_name => 'admin', :user_pass => 'admin', :is_admin => true}
			 ] 

test_apps.each do |a|
	App.create!(a)
end

test_users.each do |x|
	User.create!(x)
end
