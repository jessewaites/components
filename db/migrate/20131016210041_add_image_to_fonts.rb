class AddImageToFonts < ActiveRecord::Migration
  def change
    add_column :fonts, :image, :string
  end
end
