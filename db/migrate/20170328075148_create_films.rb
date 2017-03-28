class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :name
      t.string :description
      t.string :url
      t.integer :category
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
