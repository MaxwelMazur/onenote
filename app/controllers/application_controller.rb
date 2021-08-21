class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include CanCan::ControllerAdditions

  # TODO: remove this line
  skip_before_action :verify_authenticity_token
end
