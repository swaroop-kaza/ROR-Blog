class AddViewsToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :views, :Integer, default:0
  end
end
