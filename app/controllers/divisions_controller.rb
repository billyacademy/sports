class DivisionsController < ApplicationController
  require 'open-uri'

  def index
    @division_url = "https://foot-rosters.herokuapp.com/divisions"
    @divisions = JSON.load(open(@division_url))
  end
end
