class EventsRequestsController < ApplicationController
  def create
    event_request = EventRequest.create(permitted_params)
    render json: event_request, status: :ok
  end

  private

  def permitted_params
    params.require(:event_request).permit(
      :name,
      :description,
      :date,
      :participants_number,
      :responsable_id,
      :office_id,
      :event_request_status_id,
      :event_type_id
    )
  end
end
