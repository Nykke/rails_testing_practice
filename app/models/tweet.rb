class Tweet < ActiveRecord::Base
  belongs_to :zombie

  validates :status, presence: true, length: {within: 3..140, allow_blank: true}
  validates :zombie, presence: true

  def brains?
    status =~ /(brains|brains)/i
  end

  def show_author_summary
    self.status = self.zombie.zombie_summary
  end

  def status_image
    image = ZwitPic.get_status_image(self.id)

    #returning an array
    {image_name: image[0], image_url: image[1]} 
  end


end
