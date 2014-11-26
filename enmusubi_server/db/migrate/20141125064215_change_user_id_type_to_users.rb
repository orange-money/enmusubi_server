class ChangeUserIdTypeToUsers < ActiveRecord::Migration
    def self.up
    change_column :users, :user_id, :string
end

def self.down
change_column :users, :user_id, :integer
end
end
