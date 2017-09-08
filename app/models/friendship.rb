class Friendship < ApplicationRecord
  belongs_to :friend_from, :class_name => 'User'
  belongs_to :friend_to, :class_name => 'User'
end
