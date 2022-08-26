class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :authors
      t.string :language
      t.text :summary
      t.string :category
      t.integer :count
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
