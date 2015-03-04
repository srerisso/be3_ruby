class StaticPagesController < ApplicationController
before_action :disable_nav

  def home
  end

  def historico
  end

  def login
  	redirect_to new_user_session_path, disable_nav: @disable_nav
  end

  def disable_nav
   @disable_nav = true
  end
end
