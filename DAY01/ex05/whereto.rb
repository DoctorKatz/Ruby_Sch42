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
    argv.map! do |key_val|
      short_state = $states.fetch(key_val.strip.capitalize) if (key_val.strip.capitalize)
      puts("#{$capitals_cities.key(short_state)} is the capital of #{key_val.strip.capitalize}") if short_state.nil?
      short_capital = $capitals_cities.key(key_val.strip.capitalize)
      puts("#{$states.key(short_capital)} is the capital of #{key_val.strip.capitalize}") if short_capital.nil?

    end
  rescue IndexError => error
    puts('Sosi bibu becouse ' + error.message)
  end
end

def main
  exit if ARGV.length == 0
  find_state(ARGV.map(&:dup))
end

main