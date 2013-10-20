class AddImageColumnsToFonts < ActiveRecord::Migration
  def self.up
    remove_column :fonts, :image
    change_table :fonts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :fonts, :image
  end
end
