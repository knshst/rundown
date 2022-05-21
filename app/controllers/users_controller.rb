before_action :move_to_login
class UsersController < ApplicationController
class UsersController < ApplicationController
class UsersController < ApplicationController
class UsersController < ApplicationController
class UsersController < ApplicationController
class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @technology = user.posts.where(radio: '★★★').order("created_at DESC").page(params[:page]).includes(:user)
    @english = user.posts.where(radio: '★★').order("created_at DESC").page(params[:page]).includes(:user)
    @music = user.posts.where(radio: '★').order("created_at DESC").page(params[:page]).includes(:user)
    
  end
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
end