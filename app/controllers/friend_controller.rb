class FriendController < ApplicationController
  def index

  end

  def show
    friend_id = params[:id]
    @friend = Friend.find(friend_id)
  end

  def create

  end
end
