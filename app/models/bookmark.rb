class Bookmark < ActiveRecord::Base
  belongs_to :user
  validates :url,  presence: true, length: { maximum: 200 }
  def self.search(search)
    if search
      Bookmark.where(['my_description LIKE ?', "%#{search}%"])
    else
      #検索で見つからない場合は全部表示
      Bookmark.all
    end
  end
end
