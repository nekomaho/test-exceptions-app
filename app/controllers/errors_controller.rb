class ErrorsController < ActionController::Base
rescue_from ActionController::RoutingError, with: :render_404

  def render_404
    render template: 'errors/error_404', status: 404
  end

  def show; end

end 
