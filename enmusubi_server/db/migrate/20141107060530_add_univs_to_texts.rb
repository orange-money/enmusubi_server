class AddUnivsToTexts < ActiveRecord::Migration

  def change
    add_column :texts, :univ, :string, :null => false
  end
end
