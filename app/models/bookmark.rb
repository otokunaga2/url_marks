class Bookmark < ActiveRecord::Base
  belongs_to :user
  validates :url,  presence: true, length: { maximum: 200 }
  #日付の新しい順に並べる
  default_scope -> { order('created_at DESC') }
  def self.search(search)
    if search
      Bookmark.where(['my_description LIKE ?', "%#{search}%"])
    else
      #検索で見つからない場合は全部表示
      Bookmark.all
    end
  end
end
