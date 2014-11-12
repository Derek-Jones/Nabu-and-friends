class User < ActiveRecord::Base
  attr_accessible :email, :name, :razer_id, :steam_id

  has_many :bumps

  validates :name, presence: true
  validates :email, presence: true
  validates :razer_id, length: {minimum:32}
  validates :steam_id, length: {minimum:32}
end
