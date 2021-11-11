class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(param[:id])
  end
end
