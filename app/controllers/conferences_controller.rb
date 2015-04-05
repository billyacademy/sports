class ConferencesController < ApplicationController
  require 'open-uri'
  include ApplicationHelper
  before_filter :set_conferences

  def set_conferences
    @conferences = JSON.load(open(conference_url))["conferences"]
  end

  def index
  end

  def show
    @divisions = JSON.load(open(division_url))
  end
end
