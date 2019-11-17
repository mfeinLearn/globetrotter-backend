class User < ApplicationRecord
  has_secure_password
  has_many :trips
  belongs_to :hometown, class_name: "Location"
  has_many :trips
  has_many :visits, through: :trips
  has_many :attractions, through: :trips
  has_many :locations, through: :trips
  has_many :comments
  # these are generating methods for us that
  ## active record will use to build
  ## quearies to our database searching for
  ## things that are associated by their foreign key

  validates :name, :username, :hometown, presence: true
  validates :username, uniqueness: true
end
