class AddNewFiledsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :views, :integer, default: 0
    add_column :posts, :published, :boolean, default: false
  end
end
