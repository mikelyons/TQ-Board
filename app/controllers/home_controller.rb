class HomeController < ApplicationController
  def index
		puts Posts.all
  end

end
