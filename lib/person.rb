# your code goes here

class Person 
    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = value_checker (happiness)
        @hygiene = value_checker (hygiene)
    end

    def value_checker(value)

        if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    def hygiene=(value)
        @hygiene = value_checker value
    end

    def happiness=(value)
        @happiness = value_checker value
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid (amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene = @hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene = @hygiene
        @happiness += 2
        self.happiness = @happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        @happiness += 3
        self.happiness = @happiness
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation (friend, topic)
        if topic == "politics"
            @happiness -= 2
            self.happiness = @happiness
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            self.happiness = @happiness
            friend.happiness += 1 
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end        
    
    end

end

john = Person.new("John", 277, 17, -8)