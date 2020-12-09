Rails.application.routes.draw do
  resources :jweets do
    collection do
      post :confirm
    end
  end
end
