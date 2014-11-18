class AddTeachersToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :teacher, :string
  end
end
