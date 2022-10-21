class Quesion

    attr_accessor :input, :answer

    def initialize(input, answer)
        @input = input
        @answer = answer
    end

    q1 = "What color pigs are?\n(a)pink\n(b)purple\n(c)blue"
    q2 = "What is the last name of Naruto?\n(a)Uchiha\n(b)Ketchum\n(c)Uzumaki"
    q3 = "Who is the queen of pop?\n(a)Britney Spears\n(b)Madonna\n(c)Rosalia"

    questions_array = [
        Quesion.new(q1, "a"),
        Quesion.new(q2, "c"),
        Quesion.new(q3, "b")
    ]

    def self.play_game(questions)
        user_answer = ""
        score = 0

        questions.each do |question|
            puts question.input
            user_answer = gets.chomp()

            if user_answer == question.answer
                score += 1
            end
        end
        puts ("You got #{score.to_s} out of #{questions.length().to_s}")
    end

    play_game(questions_array)
end

