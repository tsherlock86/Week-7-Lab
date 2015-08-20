class Pin < ActiveRecord::Base

  belongs_to :user
  acts_as_taggable
  acts_as_votable

  attachment :file

  validates :image, allow_blank: true, format: { with: %r{\.gif\z}, message: 'must be a .gif image.' }

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

end
