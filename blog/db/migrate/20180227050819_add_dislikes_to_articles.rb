class AddDislikesToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :dislikes, :Integer, default:0
  end
end
