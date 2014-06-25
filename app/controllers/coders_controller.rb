class CodersController < ApplicationController
  require 'rest_client'
  require 'json'

  def index
    @users = List.last.list_array.flatten.uniq
    @directory = Kaminari.paginate_array(@users).page(params[:page]).per(100)
  end
end















