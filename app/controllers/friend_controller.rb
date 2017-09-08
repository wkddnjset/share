class FriendController < ApplicationController
  def index
    @users = User.all
  end

  def friend_admin
    @users = User.all
  end

  def show
    @friend_id = params[:id]
  end

  def post
    user_id = params[:user_id]
		friend_id = params[:friend_id]
    friendship = Friendship.where(user_id: user_id, friend_id: friend_id).first
    received_friendship = Friendship.where(friend_id: user_id, user_id: friend_id).first
    if friendship.nil? and (received_friendship.nil? or (not received_friendship.is_accepted and not received_friendship.is_pending))
      Friendship.create(user_id: user_id, friend_id: friend_id)
    elsif not friendship.nil? and not friendship.is_accepted
      friendship.is_pending = true
      friendship.is_accepted = false
      friendship.save
    end
		redirect_to '/friend_admin'
  end

  def create
    user_id = params[:user_id]
		friend_id = params[:friend_id]
    friendship = Friendship.where(user_id: user_id, friend_id: friend_id).first
    if not friendship.nil?
      friendship.is_pending = false
      friendship.is_accepted = true
      friendship.save
    end
		redirect_to '/friend_admin'
  end

  def destroy
    user_id = params[:user_id]
		friend_id = params[:friend_id]
    friendship = Friendship.where(user_id: user_id, friend_id: friend_id).first
    if not friendship.nil?
      friendship.is_pending = false
      friendship.is_accepted = false
      friendship.save
    end
		redirect_to '/friend_admin'
  end
end
