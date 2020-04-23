class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @min_diff_team = get_min_diff
  end

  def raw_teams_data
    @teams = File.open('public/football.dat').read
  end

  private

  def get_min_diff
    @teams.min_by{ |team| get_diff(team['goal_hit'].to_i, team['goal_against'].to_i) }
  end

  def get_diff(goal_hit, goal_against)
    (goal_hit - goal_against).abs
  end
end
