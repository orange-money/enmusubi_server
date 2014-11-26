class Text < ActiveRecord::Base
    primary_key = :textinfo_id
    attr_accessor :file
    belongs_to :user
end
