class Font < ActiveRecord::Base
	belongs_to :user
    has_reputation :likes, source: :user, aggregated_by: :sum
    attr_accessible :avatar

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '800x300>'
  }
end
