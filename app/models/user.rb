class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :bookmarks
  accepts_nested_attributes_for :bookmarks
end
