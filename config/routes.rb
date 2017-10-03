Rails.application.routes.draw do
  resource 'events_requests', only: [:create]

  get 'public/health_check', to: 'public#health_check'
end
