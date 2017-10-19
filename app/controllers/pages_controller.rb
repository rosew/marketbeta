class PagesController < ApplicationController

  def show
    if page_name = get_page_name
      render template: page_name
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  private

  def get_page_name
    # Only allow letters in page names
    page = params[:page].tr( '^A-Za-z', '' )

    lookup_context.exists?(page, 'pages') ? "pages/#{page}" : nil
  end

end
