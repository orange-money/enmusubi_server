class Image < ActiveRecord::Base
    primary_key = :textinfo_id
    has_one :text
    attr_accessor :file
end
