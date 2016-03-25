Rails.application.routes.draw do

root 'keywords#index'
get 'keywords/generate', as: "generate"
get 'keywords/update_length', as: 'update_length'
end
