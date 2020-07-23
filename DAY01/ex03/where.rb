$states = {
    "Oregon" => "OR",
    "Alabama" => "AL",
    "New Jersey" => "NJ",
    "Colorado" => "CO"
}
$capitals_cities = {
    "OR" => "Salem",
    "AL" => "Montgomery",
    "NJ" => "Trenton",
    "CO" => "Denver"
}

def find_capital(argv)
  begin
    short_state = $states.fetch(argv)
    puts($capitals_cities.fetch(short_state))
  rescue IndexError => error
    puts('Sosi bibu becouse ' + error.message)
  end
end

def main
  exit if ARGV.length != 1
  find_capital(ARGV[0])
end

main