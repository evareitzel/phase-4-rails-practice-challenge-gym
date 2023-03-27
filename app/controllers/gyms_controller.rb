class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /gyms/:id
  def show
    gym = Gym.find(params[:id]) #!
    render json: gym, status: :accepted
  end

  # DELETE /gyms/:id
  def destroy
    gym = Gym.find(params[:id])
    gym.destroy
    head :no_content
  end


  private

  def render_not_found_response
    render json: { errors: ["Gym not found"] }, status: :not_found
  end

end
