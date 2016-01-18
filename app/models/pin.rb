class Pin < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :storage => :dropbox,
                    :dropbox_credentials => { app_key: ENV['APP_KEY'],
                              app_secret: ENV['APP_SECRET'],
                              access_token: ENV['ACCESS_TOKEN'],
                              access_token_secret: ENV['ACCESS_TOKEN_SECRET'],
                              user_id: ENV['USER_ID'],
                              access_type: 'app_folder'}

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  validates :image, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
