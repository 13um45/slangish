class SlangsController < ApplicationController

  def index
    @page = (params[:page] || 1).to_i
    offset = (@page -1) * 8
    @slangs = Slang.
    order(word: :asc).
    limit(8).
    offset(offset).
    all
  end
  
  def show
    @slang = Slang.find(params[:id])
  end

  def new
    @slang = Slang.new
  end

  def edit
    @slang = Slang.find(params[:id])
  end

  def create
    @slang = Slang.new(slang_params)

    if @slang.save
    redirect_to @slang
  else
    render 'new'
  end
  end

  def update
  @slang = Slang.find(params[:id])
 
  if @slang.update(slang_params)
    redirect_to @slang
  else
    render 'edit'
  end
end

def destroy
  @slang = Slang.find(params[:id])
  @slang.destroy
 
  redirect_to slangs_path
end

  private
  def slang_params
    params.require(:slang).permit(:word, :definition)
  end
end

