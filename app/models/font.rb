class Font < ActiveRecord::Base
	belongs_to :user
    has_reputation :likes, source: :user, aggregated_by: :sum
end
