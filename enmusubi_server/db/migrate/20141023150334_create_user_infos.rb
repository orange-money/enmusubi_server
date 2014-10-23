class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos, :id=>false do |t|
      t.string :name, :null => false
      t.string :username, :null => false
      t.string :link, :null => false
      t.column :userinfo_id, "int(11) PRIMARY KEY", :null => false
      
      t.timestamps
    end
  end
end
