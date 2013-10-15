class AddIndexToFont < ActiveRecord::Migration
  def change
  	add_index :fonts, :user_id
  end
end
