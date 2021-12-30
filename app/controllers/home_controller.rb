class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @name = user_signed_in? ? current_user.name : "Visitante"
  end
end
