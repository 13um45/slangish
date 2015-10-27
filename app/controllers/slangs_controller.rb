class SlangsController < ApplicationController
  def new
  end

  def create
    render plain: params[:slang].inspect
  end
end

