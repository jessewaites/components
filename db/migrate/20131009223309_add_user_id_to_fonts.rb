class AddUserIdToFonts < ActiveRecord::Migration
  def change
  	def self.up
      add_column :userID, :integer
    end

    def self.down
      remove_column :userID
    end
  end
end
