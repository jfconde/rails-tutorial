class StaticPagesController < ApplicationController
before_filter :correct_user, only: :destroy_ajax

  def home
    if(signed_in?)
      @user = current_user
      @microposts = @user.microposts.paginate(page: params[:page], per_page: 20)
      @micropost = Micropost.new
    else
    end
  end

  def destroy_ajax
    Micropost.find(params[:id]).destroy

    @microposts = current_user.microposts.paginate(page: params[:page], per_page: 20)
  end

  def page_1
  end

  def page_2
  end

end
