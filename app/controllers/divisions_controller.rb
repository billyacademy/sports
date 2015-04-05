class DivisionsController < ApplicationController
  require 'open-uri'

  def index
    @division_url = "https://foot-rosters.herokuapp.com/divisions"
    @divisions = JSON.load(open(@division_url))
  end

  def show
    @conference_url = "https://foot-rosters.herokuapp.com/conferences"
    @division_url = "https://foot-rosters.herokuapp.com/divisions"
    @team_url = "https://foot-rosters.herokuapp.com/teams"

    @conferences = JSON.load(open(@conference_url))["conferences"]
    @divisions = JSON.load(open(@division_url))
    @teams = JSON.load(open(@team_url))
  end
end
