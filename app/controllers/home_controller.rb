class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @acc = current_user.acc
    @name = current_user.name
    @msg = current_user.msg
  end
end
