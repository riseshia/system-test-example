class ApiController < ApplicationController
  def index
    render json: { data: 'hello' }
  end
end
