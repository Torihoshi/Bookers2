class Book < ApplicationRecord


  has_one_attached :profile_image
  belongs_to :user

  #titleが存在しているかを確認するバリデーション
  validates :title, presence: true
  #bodyが存在しているかを確認するバリデーション
  validates :body, presence: true
end
