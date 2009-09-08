class CreatePortfolioItems < ActiveRecord::Migration
  def self.up
    create_table :portfolio_items do |t|
      t.string :title
      t.string :slug
      t.string :url
      t.string :image
      t.text   :body
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :portfolio_items
  end
end
