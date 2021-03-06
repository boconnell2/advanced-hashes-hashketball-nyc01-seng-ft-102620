# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def team_finder(name)
  data = game_hash
  home_team = false
  for i in 0...data[:home][:players].size do
    if data[:home][:players][i][:player_name] == name
      home_team = true
    end
  end
  home_team
end

def num_points_scored(name)
  data = game_hash
  home_boolean = team_finder(name)
  if home_boolean
    for i in 0...data[:home][:players].size do
      if data[:home][:players][i][:player_name] == name
        points_scored = data[:home][:players][i][:points]
      end
    end
  else
    for i in 0...data[:away][:players].size do
      if data[:away][:players][i][:player_name] == name
        points_scored = data[:away][:players][i][:points]
      end
    end    
  end
  points_scored
end

def shoe_size(name)
  data = game_hash
  home_boolean = team_finder(name)
  if home_boolean
    for i in 0...data[:home][:players].size do
      if data[:home][:players][i][:player_name] == name
        shoe_size_var = data[:home][:players][i][:shoe]
      end
    end
  else
    for i in 0...data[:away][:players].size do
      if data[:away][:players][i][:player_name] == name
        shoe_size_var = data[:away][:players][i][:shoe]
      end
    end    
  end
  shoe_size_var
end

def team_colors(name)
  data = game_hash
  if data[:home][:team_name] == name
    teamcolors = data[:home][:colors]
  else
    teamcolors = data[:away][:colors]
  end
  teamcolors
end

def team_names
  data = game_hash
  names = []
  names.push(data[:home][:team_name])
  names.push(data[:away][:team_name])
  names
end

def player_numbers(teamName)
  data = game_hash
  numbers = []
  if data[:home][:team_name] == teamName
    for i in 0...data[:home][:players].size do 
      numbers.push(data[:home][:players][i][:number])
    end
  else
    for i in 0...data[:away][:players].size do 
      numbers.push(data[:away][:players][i][:number]) 
    end
  end
  numbers
end

def player_stats(name)
  data = game_hash
  home_boolean = team_finder(name)
  if home_boolean
    for i in 0...data[:home][:players].size do
      if data[:home][:players][i][:player_name] == name
        stats = data[:home][:players][i]
      end
    end
  else
    for i in 0...data[:away][:players].size do
      if data[:away][:players][i][:player_name] == name
        stats = data[:away][:players][i]
      end
    end    
  end
  stats
end

def big_shoe_rebounds
  data = game_hash
  max_size = 0 
  rebs = 0
  data.each do |team,value| 
    for i in 0...data[team][:players].size do
      if data[team][:players][i][:shoe] > max_size
        max_size = data[team][:players][i][:shoe]
        rebs = data[team][:players][i][:rebounds]
      end
    end
  end
  rebs
end

  