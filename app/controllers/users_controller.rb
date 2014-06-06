class UsersController < ApplicationController
  require 'json'

  def index
    @directory = User.get("search/users?q=location:africa")
  end
end
