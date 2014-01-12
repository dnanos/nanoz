class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.references :book, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
