class AddTagsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :instagram, :string
    add_column :users, :snapchat, :string 

  end
end
