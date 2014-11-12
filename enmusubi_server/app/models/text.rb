class Text < ActiveRecord::Base
    primary_key = :textinfo_id
    belongs_to :user
    belogns_to :image
end
