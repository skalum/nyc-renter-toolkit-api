class AddressesController < ApiController
  before_action :set_address, only: [:destroy]

  def index
    @addresses = Address.order("created_at DESC").all
    render json: @addresses
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      render json: @address
    else
      render json: { errors: { message: "Address failed to save." } }
    end
  end

  def destroy
    if @address
      @address.destroy
    else
      render json: { errors: { message: "Address was not found." } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def address_params
      params.require(:address).permit(:buildingIdentificationNumber, :user_id)
    end
end
