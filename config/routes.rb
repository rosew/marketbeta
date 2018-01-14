Rails.application.routes.draw do

  constraints Clearance::Constraints::SignedIn.new { |user| user.pending_user? }  do
    root to: "pages#show", page: "pending", as: :signed_in_pending
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: "dashboard#index", as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "pages#show", page: "sales"
  end

  # Add support for static pages
  get "/pages/:page" => "pages#show"

end
