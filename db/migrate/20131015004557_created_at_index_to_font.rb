class CreatedAtIndexToFont < ActiveRecord::Migration
  def change
  	add_index :fonts, :created_at
  end
end
