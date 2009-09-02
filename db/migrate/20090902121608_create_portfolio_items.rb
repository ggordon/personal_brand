class CreatePortfolioItems < ActiveRecord::Migration
  def self.up
    create_table :portfolio_items do |t|
      t.string :title
      t.string :url
      t.text :body
      t.date :start_date
      t.date :end_date
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :portfolio_items
  end
end
