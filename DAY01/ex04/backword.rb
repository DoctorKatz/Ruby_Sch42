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

def find_state(argv)
  begin
    short_capital = $capitals_cities.key(argv)
    puts($states.key(short_capital))
  rescue IndexError => error
    puts('Sosi bibu becouse ' + error.message)
  end
end

def main
  exit if ARGV.length != 1
  find_state(ARGV[0])
end

main