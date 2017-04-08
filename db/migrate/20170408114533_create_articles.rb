class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
			t.string :title
			t.integer :user_id
			t.string :address
			t.integer :category_id
			t.string :tags
			t.string :cover_image
			t.text :content
			t.boolean :published
			t.timestamps :published_at
      t.timestamps null: false
    end
  end
end
