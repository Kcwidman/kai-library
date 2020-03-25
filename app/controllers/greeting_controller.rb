class GreetingController < ApplicationController

  skip_before_action :authenticate_user!

  layout 'greeting'

  def index
  end
end