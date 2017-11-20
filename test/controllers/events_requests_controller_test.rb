require 'test_helper'

class EventsRequestsControllerTest < ActionDispatch::IntegrationTest
  test 'creates an event request' do
    event_request_params = {
      name: 'Event name',
      description: 'Event description',
      date: Time.zone.now,
      participants_number: 1,
      responsable_id: responsables(:one).id,
      office_id: offices(:one).id,
      event_request_status_id: event_request_statuses(:one).id,
      event_type_id: event_types(:one).id
    }

    post '/api/v0/events_requests', params: { event_request: event_request_params }

    events_request = JSON.parse(@response.body)

    assert_response :success
    assert_equal event_request_params[:name], events_request['name']
  end
end
