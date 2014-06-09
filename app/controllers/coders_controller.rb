class CodersController < ApplicationController
  require 'json'

  def index
    @directory = Coder.get("search/users?q=location:africa")
  end
end