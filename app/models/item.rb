class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :fee
  belongs_to :prefecture
  belongs_to :day

  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  def was_attached?
    self.image.attached?
  end
  validates :item_name, presence: true
  validates :item_text, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :fee_id, presence: true
  validates :prefecture_id, presence: true
  validates :day_id, presence: true
  validates :price, format: { with: /\A[0-9]+\z/ }
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  validates :price, presence: true

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :fee_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :day_id, numericality: { other_than: 1 , message: "can't be blank"}

end
