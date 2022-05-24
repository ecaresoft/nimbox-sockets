class Api::V1::TelehealthWaitingRoomsController < ApplicationController
  def create
    ActionCable.server.broadcast(
      "telehealth_waiting_rooms_##{channel_id}",
      { 
        action: action_cable_action,
        payload: action_cable_metadata,
        message: action_cable_params[:message]
      }
    )
    render json: action_cable_params, status: 201
  end

  def action_cable_metadata
    params[:payload][:metadata]
  end

  def action_cable_action
    "#{action_cable_params[:type]}_#{action_cable_params[:message]}"
  end

  def channel_id
    action_cable_params[:channel_id]
  end

  def action_cable_params
    params.require(:payload).permit(params_list)
  end
  
  def params_list
    [:event_id, :channel_id, :request_id, :type, :message, :metadata]
  end
end
