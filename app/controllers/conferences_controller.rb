class ConferencesController < ApplicationController
  require 'open-uri'

  def index
    @conference_url = "https://foot-rosters.herokuapp.com/conferences"
    @conferences = JSON.load(open(@conference_url))["conferences"]
  end

  def show
    @conference_url = "https://foot-rosters.herokuapp.com/conferences"
    @division_url = "https://foot-rosters.herokuapp.com/divisions"
    @conferences = JSON.load(open(@conference_url))["conferences"]
    @divisions = JSON.load(open(@division_url))
  end
end
