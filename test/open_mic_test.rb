require 'minitest/autorun'
require 'minitest/pride'
require './lib/open_mic'
require './lib/user'
require './lib/joke'


class OpenMic < Minitest::Test
  open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

  assert_instance_of OpenMic, open_mic
end

# open_mic.location
# # => "Comedy Works"
# open_mic.date
# # => "11-20-18"
# open_mic.performers
# # => []
# sal = User.new("Sal")
# # => #<User:0x00007fe8fda12a00...>
# ali = User.new("Ali")
# # => #<User:0x00007fe8ff0dddc0...>
# open_mic.welcome(sal)
# open_mic.welcome(ali)
# open_mic.performers
# # => [#<User:0x00007fe8fda12a00...>, #<User:0x00007fe8ff0dddc0...>]
# joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# # => #<Joke:0x00007fe8fd892978...>
# joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
# # => #<Joke:0x00007fe8fe19f250...>
# ali.learn(joke_1)
# ali.learn(joke_2)
# open_mic.repeated_jokes?
# # => false
# ali.tell(sal, joke_1)
# open_mic.repeated_jokes?
# # => true
