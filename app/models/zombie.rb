class Zombie < ActiveRecord::Base
  validates :name, presence: true

  has_many :zombies 

  def avatar_url
    "http://zombitar.com/#{id}.jpg"
  end

end
