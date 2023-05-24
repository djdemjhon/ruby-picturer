class Picture < ApplicationRecord

    mount_uploader :attached_image_file, AttachedImageUploader
    
end
