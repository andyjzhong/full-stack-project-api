class CarsController < ProtectedController
  before_action :set_car, only: [:show, :update, :destroy]

  # GET /cars
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  def show
    render json: @car
  end

  # POST /cars
  def create
    # @car = Car.new(car_params)
    # Array of current user's car objects

    # Build method allows you to create a new car and also build an association between user and new car.
      # @car = Car.new(car_params)
      # @car.user_id = current_user.id
    @car = current_user.cars.build(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      # @car = Car.find(params[:id])
      @car = current_user.cars.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:make, :model, :year, :color)
    end
end
