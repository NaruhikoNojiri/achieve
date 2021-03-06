class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :notifications, dependent: :destroy

  # pusherでコメント作成のトリガを作成する
  def self.notify_cmt_creation(comment,current_user)
    unless comment.blog.user_id == current_user.id
      Pusher.trigger("user_#{comment.blog.user_id}_channel","comment_created",{
        message: "あなたの作成したブログにコメントが付きました"
      })
    end
    Pusher.trigger("user_#{comment.blog.user_id}_channel", 'notification_created', {
      unread_counts: Notification.where(user_id: comment.blog.user.id, read: false).count
    })
  end

end
