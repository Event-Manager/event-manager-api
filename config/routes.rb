Rails.application.routes.draw do
  get 'public/health_check', to: 'public#health_check'
end
