class Users::DashboardController < UsersController
  before_action :authenticate_user!

  def index
  end
end
