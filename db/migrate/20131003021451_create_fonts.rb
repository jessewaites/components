class CreateFonts < ActiveRecord::Migration
  def change
    create_table :fonts do |t|
      t.string :fontnames
      t.text :description
      t.string :html
      t.text :css

      t.timestamps
    end
  end
end
