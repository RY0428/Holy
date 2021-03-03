class Tweet < ApplicationRecord

    belongs_to :user

    # 追記
    mount_uploader :image, ImageUploader

    #追記2
    mount_uploader :video, VideoUploader

    #追記3
    
end
