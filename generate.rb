require 'csv'

def read_file(filepath)
  opts = { col_sep: '|', row_sep: "\n", encoding: 'utf-8', headers: false }
  CSV.read(filepath, opts)
end

def process_data(csv)
  csv.map{|e| e.first}
end

def select_player(players)
  players[Random.rand(players.size)]
end

filepath = "data/players.csv"

csv = read_file(filepath)
players = process_data(csv)

mendesroulette = 11.times.map{select_player(players)}

puts "Here is your Jorge Mendes squad:"
puts "================================"
puts mendesroulette