class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def raw_data
    @teams = Team.all
  end
end
