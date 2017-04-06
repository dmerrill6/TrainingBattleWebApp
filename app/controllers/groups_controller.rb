class GroupsController < ApplicationController
  load_and_authorize_resource
  before_action :set_group, only: [:show,:edit]

  def index
    @group = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end
  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      redirect_to :back, notice: "Ha ocurrido un error!"
    end
  end

  def edit
    @exercises = Exercise.all
  end

  def update
    @group = Group.find params[:id]
    @group.update_attributes(group_params)
    redirect_to edit_group_path(@group), notice: "#{@group.name} has been updated!"
  end



  protected

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
