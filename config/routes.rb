Rails.application.routes.draw do

root 'keywords#index'
get 'keywords/update_length', as: 'update_length'
end
