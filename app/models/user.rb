class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendship_froms, :class_name => 'Friendship', :foreign_key => :friend_to_id
  has_many :friend_froms, through: :friendship_froms, :class_name => 'User'
  has_many :friendship_toes, :class_name => 'Friendship', :foreign_key => :friend_from_id
  has_many :friend_toes, through: :friendship_toes, :class_name => 'User'
end
