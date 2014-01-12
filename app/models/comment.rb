class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  
  def self.to_caption
    cnt = self.where(:moderated => true).count
    if cnt == 1
      return "#{cnt} комментарий"
    elsif cnt == 2 or cnt == 3 or cnt == 4
      return "#{cnt} комментария"
    else
      return "#{cnt} комментариев"
    end
  end
end
