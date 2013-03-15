class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    session[:test] ||= 'failure'
    cookies.signed[:test] ||= 'failure'
    render text: "session[:test] = #{session[:test]} ; cookies.signed[:test] = #{cookies.signed[:test]}"
  end
end
