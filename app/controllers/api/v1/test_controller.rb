class Api::V1::TestController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  
  def convert_url
     url = params[:url]
     ip = request.remote_ip
     Shortener::ShortenedUrl.generate("http://example.com")
  	 render json: true
  end
end