class PortfolioItem < ActiveRecord::Base

  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_presence_of :body,  :on => :create, :message => "can't be blank"

  has_permalink :title, :slug, :update => true

  def to_param
    slug
  end

  def image_path
    "/images/#{image}"
  end

end

# == Schema Information
#
# Table name: portfolio_items
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  url        :string(255)
#  image      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

