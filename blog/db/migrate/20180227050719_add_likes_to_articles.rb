class AddLikesToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :likes, :Integer, default:0
  end
end
