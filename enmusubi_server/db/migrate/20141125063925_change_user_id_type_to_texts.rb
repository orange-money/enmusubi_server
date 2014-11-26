class ChangeUserIdTypeToTexts < ActiveRecord::Migration
    def self.up
    change_column :texts, :user_id, :string
end

def self.down
change_column :texts, :user_id, :integer
end

end
