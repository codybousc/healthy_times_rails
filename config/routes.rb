Rails.application.routes.draw do
  resources :health_categories do
    resources :individual_sections
  end
end
