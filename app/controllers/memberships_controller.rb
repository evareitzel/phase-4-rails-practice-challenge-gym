class MembershipsController < ApplicationController

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
  # POST /memberships
  def create
    membership = Membership.create!(membership_params)
    render json: membership, status: :created
  end


  private

  def membership_params
    params.permit(:charge, :gym_id, :client_id)
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
