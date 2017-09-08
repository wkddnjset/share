class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendships
  has_many :received_friendships, class_name: "Friendship", foreign_key: "friend_id"

  has_many :active_friends, -> { where(friendships: { is_pending: false, is_accepted: true }) }, through: :friendships, source: :friend
  has_many :received_friends, -> { where(friendships: { is_pending: false, is_accepted: true }) }, through: :received_friendships, source: :user
  has_many :pending_friends, -> { where(friendships: { is_pending: true, is_accepted: false }) }, through: :friendships, source: :friend
  has_many :requested_friends, -> { where(friendships: { is_pending: true, is_accepted: false }) }, through: :received_friendships, source: :user
end
