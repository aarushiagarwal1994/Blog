class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :articles_categories
  has_many :categories, through: :articles_categories
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :text, presence: true,
                    length: { minimum: 200 }
  mount_uploader :image, ImageUploader
belongs_to :user
end
