class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :user_name
	  t.string :user_pass
	  t.boolean :is_admin

      t.timestamps
    end
  end
end
