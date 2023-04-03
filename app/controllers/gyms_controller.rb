class GymsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /gyms/:id
  def show
    gym = find_gym
    render json: gym
  end

  # DELETE /gyms/:id
  def destroy
    gym = find_gym
    gym.destroy
    head :no_content
  end

  private

  def render_not_found_response
    render json: { errors: ["Gym not found"] }, status: :not_found
  end

  def find_gym
    Gym.find(params[:id])
  end

end
