class Recipe < ActiveRecord::Base
has_attached_file :main_picture, :styles => {:display => "800x600" },
                  :url => "/assets/recipes/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/recipes/:id/:style/:basename.:extension"

validates_attachment_presence :main_picture
validates_attachment_size :main_picture, :less_than => 2.megabytes
validates_attachment_content_type :main_picture, :content_type => ['image/jpeg', 'image/png']
end
