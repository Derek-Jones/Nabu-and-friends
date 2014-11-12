class User < ActiveRecord::Base
  has_many :bumps

  attr_accessible :email, :name, :razer_id, :steam_id



  validates :name, presence: true
  validates :email, presence: true
  validates :razer_id, length: {minimum:32}
  validates :steam_id, length: {minimum:32}
end
