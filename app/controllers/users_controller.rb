class UsersController < ApiController
  before_action :set_user, only: [:update, :destroy]

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user.to_json(only: [:email, :id, :bin, :houseNumber, :street, :apt, :zip])
    else
      render json: { errors: @user.errors }, status: 500
    end
  end

  def update
    if @user.update(user_params)
      render json: @user.to_json(only: [:email, :id, :bin])
    else
      render json: { errors: @user.errors }, status: 500
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :bin, :houseNumber, :street, :apt, :zip)
    end
end
