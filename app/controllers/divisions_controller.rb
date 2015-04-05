class DivisionsController < ApplicationController
  require 'open-uri'
  include ApplicationHelper
  before_filter :set_divisions
  def set_divisions
    @divisions = JSON.load(open(division_url))
  end

  def index
  end

  def show
    @teams = JSON.load(open(team_url))
  end
end
