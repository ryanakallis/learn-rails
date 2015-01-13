class VisitorsController < ApplicationController

  def new
    @DEBUG = "\033[1;34;40m[DEBUG]\033[0m " 
    Rails.logger.debug @DEBUG + ': entering new method'

    @owner = Owner.new
    Rails.logger.debug @DEBUG + ': Owner name is ' + @owner.name
    render 'visitors/new'
  end

end