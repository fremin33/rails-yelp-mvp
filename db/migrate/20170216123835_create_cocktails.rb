class CreateCocktails < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktails do |t|
      t.text :name
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
