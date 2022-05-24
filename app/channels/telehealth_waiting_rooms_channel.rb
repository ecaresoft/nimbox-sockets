class TelehealthWaitingRoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "telehealth_waiting_rooms_##{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
