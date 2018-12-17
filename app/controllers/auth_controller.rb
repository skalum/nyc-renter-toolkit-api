class AuthController < ApiController

  def login
    if params[:user][:token]
      @user = User.find_by(id: Auth.decode_token(params[:user][:token]).first["user_id"])
      render json: { user: @user, token: params[:user][:token] }.to_json
    else
      @user = User.find_by(email: params[:user][:email])
      if !@user
        render json: {
          error: "Unable to find a user with the provided email address"
        }, status: 500
      elsif @user && @user.authenticate(params[:user][:password])
        render json: {user: @user, token: Auth.create_token(@user.id)}.to_json
      else
        render json: {
          error: "Password does not match the provided email"
        }, status: 500
      end
    end
  end

end
