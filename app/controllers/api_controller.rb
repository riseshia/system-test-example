class ApiController < ApplicationController
  def index
    sleep 1
    render json: { data: 'hello' }
  end
end
