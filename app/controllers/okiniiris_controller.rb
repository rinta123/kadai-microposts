class OkiniirisController < ApplicationController
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = '投稿をお気に入りにしました。'
    redirect_to "/"
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to "/"
    
    
  end
end
