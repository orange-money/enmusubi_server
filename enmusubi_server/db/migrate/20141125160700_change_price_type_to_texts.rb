class ChangePriceTypeToTexts < ActiveRecord::Migration
    def self.up
    change_column :texts, :price, :string
end

def self.down
change_column :texts, :price, :integer
end
end
