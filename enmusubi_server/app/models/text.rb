class Text < ActiveRecord::Base
    primary_key = :textinfo_id
    belongs_to :user
    belongs_to :image
end
