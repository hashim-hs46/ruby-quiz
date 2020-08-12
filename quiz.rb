class Question 
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

q1 = "What is the color of an apple? Choose the correct option.\n(a)Red\n(b)Purple\n(c)orange"
q2 = "What is the color of a banana?\n(a)Green\n(b)Yellow\n(c)Pink"
q3 = "What is the color of a Pear?\n(a)Orange\n(b)Black\n(c)Green"

questions = [
    Question.new(q1, "a"),
    Question.new(q2, "b"),
    Question.new(q3, "c")
]

def test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
            puts "Correct!"
        else 
            puts "Incorrect!"
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length().to_s)
    if score > 2
        puts "Excellent!!"
    elsif score == 2
        puts "Good Job!"
    else 
        puts "Nice Try!"
    end
end

test(questions)