class TeamsController < ApplicationController
  require 'open-uri'
  include ApplicationHelper
  before_filter :set_teams
  def set_teams
    @teams = JSON.load(open(roster_url))
  end


  def index
  end

  def show
  end
end
