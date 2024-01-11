class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_one_attached :image
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :experiences, dependent: :destroy
  has_many :connections, dependent: :destroy
  has_many :connected_users, through: :connections

  validates :name, length: {minimum: 4}, presence: true
  validates :email, uniqueness: {case_sensitive: false}
  validates :mobile, length: {is: 10}, uniqueness: true, presence: true
  # validates :password, length: {minimum: 6}
  # validates :bio
  # validates :skills
  # validates :address

  def self.from_google(params)
    return nil unless params[:email] =~ /@shriffle.com\z/
    create_with(uid: params[:uid], name: params[:name], mobile: params[:mobile], address: params[:address]).find_or_create_by!(email: params[:email])
  end
end
