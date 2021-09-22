Rails.application.routes.draw do
  root "welcome#home"
  
  get "welcome", to: "welcome#home"
  get "home", to: "welcome#home"
  get "about", to: "welcome#about"
end
