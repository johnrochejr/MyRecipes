Rails.application.routes.draw do
  # mount Shrine::DownloadEndpoint => "/attachments"

  resources :recipes do
    resources :ingredients
    resources :steps

  end
end
