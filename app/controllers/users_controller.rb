class AddressesController < ApiController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user.to_json(only: [:email, :id])
    else
      render json: { errors: @user.errors }, status: 500
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password)
    end
end
