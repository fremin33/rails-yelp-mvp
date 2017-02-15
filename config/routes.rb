Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# A visitor can see the list of all restaurants.
# GET "restaurants"
# He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# He can see the details of a restaurant, with all reviews related to the restaurant.
# GET "restaurants/38"
# He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that's it!
