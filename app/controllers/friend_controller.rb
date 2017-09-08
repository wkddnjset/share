class FriendController < ApplicationController
  def index
    @users = User.all
  end

  def show
    friend_id = params[:id]
    @friend = Friend.find(friend_id)
  end

  def post
    user_id = params[:user_id]
		friend_id = params[:friend_id]
    Friendship.create(user_id: user_id, friend_id: friend_id)
  end

  def create
    
  end
end
