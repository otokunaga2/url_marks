class Bookmark < ActiveRecord::Base
  belongs_to :user
  validates :url,  presence: true, length: { maximum: 200 }
end
