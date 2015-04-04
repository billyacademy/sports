class ConferencesController < ApplicationController
  require 'open-uri'

  def index
    @conference_url = "https://foot-rosters.herokuapp.com/conferences"
    @conferences = JSON.load(open(@conference_url))["conferences"]
  end
end
