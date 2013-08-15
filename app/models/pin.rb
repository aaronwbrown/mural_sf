class Pin < ActiveRecord::Base
attr_accessible :description
attr_accessible :destroy
attr_accessible :show
attr_accessible :edit
attr_accessible :image

class Pin < ActiveRecord::Base
  validates :description, presence: true
  validates :user_id, presence: true
  has_attached_file :image, styles: { medium: "320x240>"}
  validates_attachment :image, presence: true,
	                      content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
	                      size: { less_than: 5.megabytes }
  belongs_to :user

def pin_params
 params.require(:pin).permit(:description, :image)
end
