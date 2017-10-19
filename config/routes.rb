Rails.application.routes.draw do

  constraints Clearance::Constraints::SignedIn.new do
    root to: "dashboard#index", as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "clearance/users#new"
  end

  # Add support for static pages
  get "/pages/:page" => "pages#show"

end
