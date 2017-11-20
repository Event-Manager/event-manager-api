Rails.application.routes.draw do
  scope path: 'api/v0' do
    resource 'events_requests', only: [:create]
    get 'public/health_check', to: 'public#health_check'
  end
end
