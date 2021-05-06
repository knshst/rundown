class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, foreign_key: :post_id, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :text
    validates :content
    validates :start
    validates :radio
  end

  def self.search(search)
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
