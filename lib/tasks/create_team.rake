namespace :create_team do
  desc 'Create a Team from Dat file'
  task :get_team do
    date_file = ParseDatFileService.new('public/football.dat')
    date_file.parse do |row|
      Team.find_or_create_by!(process_params(row))
    end
  end

  def process_params(row)
    {team_name: row["team"].split('. ')[1], played: row['p'], 
    win: row['w'], loose: row['l'],
    draw: row['d'], goal_hit: row['f'], goal_against: row['a'],
    points: row['pts']}
  end
end
