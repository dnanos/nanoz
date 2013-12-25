class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.date :year
      t.integer :pages
      t.float :weight
      t.date :created_at
      t.belongs_to :publisher, index: true

      t.timestamps
    end
  end
end
