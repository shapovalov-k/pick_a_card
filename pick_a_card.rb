#encoding : UTF-8
# Создадаим массив с набором достоинств
values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

# Создадим массив с набором мастей.
# Буби, черви, крести, пики.

# Playing cards in Unicode
# U+2660 - Black Spade Suit
# U+2665 - Black Heart Suit
# U+2666 - Black Diamond Suit
# U+2663- Black Club Suit

spade = "\u2666"
heart = "\u2665"
diamond = "\u2666"
club = "\u2663"

suits = [spade, heart, diamond, club]

cards = []

values.each do |value|
  suits.each do |suit|
    cards << "#{value} of #{suit}"
  end
end

cards.shuffle!

puts 'How many cards do you pick?'
number = STDIN.gets.to_i

number.times do
  puts cards.pop
end
