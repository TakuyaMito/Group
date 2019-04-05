class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      flash[:success] = "ログインが完了しました。"
    else
      flash.now[:danger] = '無効なメールアドレスとパスワードの組み合わせです。'
    render 'new'
  end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  # private
  #
  #   def log_in(user)
  #     session[:user_id] = user.id
  #   end

end
