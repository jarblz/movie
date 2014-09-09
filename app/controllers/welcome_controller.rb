class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:recom]
  def index  		
  end
  def add_recom
  	rec=Recommendations.new(title: params['title'], genre:params['genre'], user: current_user)
  	rec.save
  	redirect_to :action => 'recommendations'
  end
  def recom
  end
  def recommendations

  end
end
