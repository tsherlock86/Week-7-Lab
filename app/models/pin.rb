class Pin < ActiveRecord::Base

  belongs_to :user
  # validates :image, allow_blank: true, format: { with: %r{.(gif)\z}, message: 'Image must be a .gif image.' }
   acts_as_votable

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end


end
