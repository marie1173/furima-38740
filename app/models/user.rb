class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }, allow_blank: true
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, allow_blank: true
  validates :family_name, presence: true
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, allow_blank: true
  validates :first_name, presence: true
  validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }, allow_blank: true
  validates :family_name_kana, presence: true
  validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }, allow_blank: true
  validates :first_name_kana, presence: true
  validates :date_of_birth, presence: true
  
end
