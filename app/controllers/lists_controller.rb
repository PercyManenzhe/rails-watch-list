class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = Lists.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    # No need for app/views/restaurants/create.html.erb
    if @list.save
      redirect_to lists_path(@list), notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
