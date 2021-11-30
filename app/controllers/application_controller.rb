class ApplicationController < ActionController::API
  include Concern

    def render_result
      render json: @result.output
    end
    
end
