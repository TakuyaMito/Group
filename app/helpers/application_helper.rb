module ApplicationHelper

  #ページごとに完全なタイトルを返す
  def full_title(page_title = '')
    base_title = "Groupware"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def current_user
    @current_user ||= user.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
