class Song < ActiveRecord::Base
  belongs_to :playlist

  # validates :title, presence: true
  validates_presence_of :title, :length
  # line 3 and 4 are the same but let's get use to use line 4
  # this can't be "nil"

  def self.total_play_count
    sum(:play_count)
  end

  def self.average_play_count
    average(:play_count)
  end

end
