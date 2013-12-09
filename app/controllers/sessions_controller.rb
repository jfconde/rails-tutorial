class SessionsController < ApplicationController

  def new
  end

  def create
    logging_user = User.find_by_email(params[:session][:email]);

    if logging_user && logging_user.authenticate(params[:session][:password])
    # SUCCESSFUL LOGIN
      sign_in logging_user
      redirect_back_or(logging_user)
    else
    # WRONG E-MAIL OR PASSWORD
      if(!logging_user)
        flash[:error] = t('signin_wrong_email')
      else
        flash[:error] = t('signin_wrong_password')
      end
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
