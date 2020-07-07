class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(person, joke)
    person.learn(joke)
  end

  def joke_by_id(id)
    self.jokes.find do |joke|
      joke if joke.id == id
    end
  end
end
