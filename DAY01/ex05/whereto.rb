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
      raise "IndexError" if (short_capital = $capitals_cities.key(key_val.strip.capitalize)) == nil?

      puts("#{$states.key(short_capital)} is the capital of #{key_val.strip.capitalize}")
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