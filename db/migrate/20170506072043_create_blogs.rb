class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :picture_url
      t.string :uid
      t.string :provider
      t.timestamps null: false
    end
  end
end
