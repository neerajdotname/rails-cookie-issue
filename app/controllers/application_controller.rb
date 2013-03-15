class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    session[:test] ||= 'success'
    cookies.signed[:test] ||= 'success'
    render text: "session[:test] = #{session[:test]} ; cookies.signed[:test] = #{cookies.signed[:test]}"
  end
end
