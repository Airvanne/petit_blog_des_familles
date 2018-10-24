class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :user, index: true
      t.references :category, index: true
      t.timestamps
    end
  end
end
