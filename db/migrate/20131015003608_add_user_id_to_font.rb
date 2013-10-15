class AddUserIdToFont < ActiveRecord::Migration
  def change
    add_column :fonts, :user_id, :integer
  end
end
