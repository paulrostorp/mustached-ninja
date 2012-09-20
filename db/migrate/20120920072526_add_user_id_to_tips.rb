class AddUserIdToTips < ActiveRecord::Migration
    def self.up
    add_column :tips, :user_id, :integer
  end

  def self.down
    remove_column :tips, :user_id
  end
end
