class User < ActiveRecord::Base
    primary_key = :user_id
    has_many :texts
end
