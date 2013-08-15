class Pin < ActiveRecord::Base
attr_accessible :description
attr_accessible :destroy
attr_accessible :show
attr_accessible :edit
attr_accessible :image

validates :description, presence: true
validates :user_id, presence: true
validates_attachment :image, presence: true, 
											content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }
											size: { less_than: 5.megabytes}

belongs_to :user
has_attached_file :image

end
