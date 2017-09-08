class GroupController < ApplicationController
  def index

  end

  def show
    group_id = params[:id]
    @group = Group.find(group_id)
  end

  def create

  end
end
