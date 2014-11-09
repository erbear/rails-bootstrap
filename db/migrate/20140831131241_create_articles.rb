class CreateArticles < ActiveRecord::Migration
  def change
        create_table :articles do |t|
     	t.string :title, null: false
    	t.text :content, null: false
    	t.date :date, null: false
    	t.belongs_to :user, null: false

      	t.timestamps
    end
  end
end
