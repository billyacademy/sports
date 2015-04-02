class TeamsController < ApplicationController
  require 'open-uri'
  
  def index
    @roster_url = "https://foot-rosters.herokuapp.com/teams"
    @teams = JSON.load(open(@roster_url))
  end
end
