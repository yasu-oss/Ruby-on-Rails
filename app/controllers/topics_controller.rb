class TopicsController < ApplicationController
  def new
    render :new
  end
  
  def create
    redirect_to'topics/new'
  end
  
  def edit
    render :edit
  end

  def update
    redirect_to'topics/edit'
  end
  
    get'/topics/new', to:'new' ,as'new_post'
    get'/topics/edit', to:'edit', as'new_post'
    
end