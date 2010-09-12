class Post < ActiveRecord::Base

  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_presence_of :body,  :on => :create, :message => "can't be blank"

  has_permalink :title, :slug, :update => true

  #acts_as_textiled :body

  def to_param
    slug
  end

  def created_date
    created_at.strftime("%b %d, %Y")
  end

end

# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

