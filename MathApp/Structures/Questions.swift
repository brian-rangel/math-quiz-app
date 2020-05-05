// Questions.swift
// This file is used to store the Quiz struct and the topic enum
// The quiz struct randomly generates different questions and preset questions

// Enum that will be used to set the math topic
enum topic {
    case addition, subtraction, decimals, rounding, comparison, multiplication
}

// A struct that is used to create questions
struct Quiz {
    
    // These variables will update the header labels and the question
    var questionNumber: String = ""
    var questionDescription: String = ""
    var questionLabel: String = ""
    
    // These variables will update the choice buttons
    var choice1: String = ""
    var choice2: String = ""
    var choice3: String = ""
    var choice4: String = ""
    
    var correctChoice: Int = 0     // Set the correct choice button
    var correctString: String = "" // Set the correct answer if it is a string
    var endQuiz: Bool = false      // Set to true if we're on the last question
    
    // Setup the quiz questions
    mutating func setupQuestions(topic: topic, question: Int) {
        switch topic {
            
        // Setup the addition quiz
        case .addition:
            
            // Create an array with integers from zero to twenty
            let numbers: [Int] = Array(0...20)
            
            // Randomly choose two numbers from the 'numbers' array for our question
            let firstNumber = numbers.randomElement()!
            let secondNumber = numbers.randomElement()!
            
            // Set the correct answer
            let correctAnswer = firstNumber + secondNumber
            
            /* Pick three random numbers that aren't the same as
             * the correct answer or other randomly picked numbers
             * before it using while loops. These numbers are to
             * be displayed on the choice buttons
             */
            
            // First randomNum
            var randomNum1 = numbers.randomElement()!
            while randomNum1 == correctAnswer {
                randomNum1 = numbers.randomElement()!
            }
            
            // Second randomNum
            var randomNum2 = numbers.randomElement()!
            while (randomNum2 == correctAnswer) || (randomNum2 == randomNum1) {
                randomNum2 = numbers.randomElement()!
            }
            
            // Third randomNum
            var randomNum3 = numbers.randomElement()!
            while (randomNum3 == correctAnswer)  || (randomNum3 == randomNum1)  || (randomNum3 == randomNum2) {
                randomNum3 = numbers.randomElement()!
            }
            
            switch question {
            case 1...9:
                // Header labels
                questionNumber = "Question \(question) of 10"
                questionDescription = "Add the following integers"
                questionLabel = "\(firstNumber) + \(secondNumber)"
                
                // Put 'correctChoice' and all three 'randomNum's into a shuffled array
                // This prevents the correct choice from always being on the same button
                var shuffledAnswers = [correctAnswer, randomNum1, randomNum2, randomNum3]
                shuffledAnswers.shuffle()
                
                // Choice buttons
                choice1 = String(shuffledAnswers[0])
                choice2 = String(shuffledAnswers[1])
                choice3 = String(shuffledAnswers[2])
                choice4 = String(shuffledAnswers[3])
                
                // Set the correct choice
                if choice1 == String(correctAnswer) {
                    correctChoice = 1
                }
                else if choice2 == String(correctAnswer) {
                    correctChoice = 2
                }
                else if choice3 == String(correctAnswer) {
                    correctChoice = 3
                }
                else if choice4 == String(correctAnswer) {
                    correctChoice = 4
                }
            case 10:
                // Header labels
                questionNumber = "Question 10 of 10"
                questionDescription = "Add the following integers"
                questionLabel = "\(firstNumber) + \(secondNumber)"
                
                // Put 'correctChoice' and all three 'randomNum's into a shuffled array
                // This prevents the correct choice from always being on the same button
                var shuffledAnswers = [correctAnswer, randomNum1, randomNum2, randomNum3]
                shuffledAnswers.shuffle()
                
                // Choice buttons
                choice1 = String(shuffledAnswers[0])
                choice2 = String(shuffledAnswers[1])
                choice3 = String(shuffledAnswers[2])
                choice4 = String(shuffledAnswers[3])
                
                // Set the correct choice
                if choice1 == String(correctAnswer) {
                    correctChoice = 1
                }
                else if choice2 == String(correctAnswer) {
                    correctChoice = 2
                }
                else if choice3 == String(correctAnswer) {
                    correctChoice = 3
                }
                else if choice4 == String(correctAnswer) {
                    correctChoice = 4
                }
                
                // Since this is the last questions, the 'Next Question' button will end the quiz
                endQuiz = true
            default:
                print("bug")
            }
        
        // Setup the subtraction quiz
        case .subtraction:
            
            // Create an array with integers from zero to twenty
            let numbers: [Int] = Array(0...20)
            
            // Randomly choose two numbers from the 'numbers' array for our question
            let firstNumber = numbers.randomElement()!
            let secondNumber = numbers.randomElement()!
            
            // Set the correct answer
            let correctAnswer = firstNumber - secondNumber
            
            /* Pick three random numbers that aren't the same as
             * the correct answer or other randomly picked numbers
             * before it using while loops. These numbers are to
             * be displayed on the choice buttons
             */
            
            // First randomNum
            var randomNum1 = numbers.randomElement()!
            while randomNum1 == correctAnswer {
                randomNum1 = numbers.randomElement()!
            }
            
            // Second randomNum
            var randomNum2 = numbers.randomElement()!
            while (randomNum2 == correctAnswer) || (randomNum2 == randomNum1) {
                randomNum2 = numbers.randomElement()!
            }
            
            // Third randomNum
            var randomNum3 = numbers.randomElement()!
            while (randomNum3 == correctAnswer)  || (randomNum3 == randomNum1)  || (randomNum3 == randomNum2) {
                randomNum3 = numbers.randomElement()!
            }
            
            switch question {
            case 1...9:
                // Header labels
                questionNumber = "Question \(question) of 10"
                questionDescription = "Subtract the following integers"
                questionLabel = "\(firstNumber) - \(secondNumber)"
                
                // Put 'correctChoice' and all three 'randomNum's into a shuffled array
                // This prevents the correct choice from always being on the same button
                var shuffledAnswers = [correctAnswer, randomNum1, randomNum2, randomNum3]
                shuffledAnswers.shuffle()
                
                // Choice buttons
                choice1 = String(shuffledAnswers[0])
                choice2 = String(shuffledAnswers[1])
                choice3 = String(shuffledAnswers[2])
                choice4 = String(shuffledAnswers[3])
                
                // Set the correct choice
                if choice1 == String(correctAnswer) {
                    correctChoice = 1
                }
                else if choice2 == String(correctAnswer) {
                    correctChoice = 2
                }
                else if choice3 == String(correctAnswer) {
                    correctChoice = 3
                }
                else if choice4 == String(correctAnswer) {
                    correctChoice = 4
                }
            case 10:
                // Header labels
                questionNumber = "Question 10 of 10"
                questionDescription = "Subtract the following integers"
                questionLabel = "\(firstNumber) - \(secondNumber)"
                
                // Put 'correctChoice' and all three 'randomNum's into a shuffled array
                // This prevents the correct choice from always being on the same button
                var shuffledAnswers = [correctAnswer, randomNum1, randomNum2, randomNum3]
                shuffledAnswers.shuffle()
                
                // Choice buttons
                choice1 = String(shuffledAnswers[0])
                choice2 = String(shuffledAnswers[1])
                choice3 = String(shuffledAnswers[2])
                choice4 = String(shuffledAnswers[3])
                
                // Set the correct choice
                if choice1 == String(correctAnswer) {
                    correctChoice = 1
                }
                else if choice2 == String(correctAnswer) {
                    correctChoice = 2
                }
                else if choice3 == String(correctAnswer) {
                    correctChoice = 3
                }
                else if choice4 == String(correctAnswer) {
                    correctChoice = 4
                }
                
                // Since this is the last questions, the 'Next Question' button will end the quiz
                endQuiz = true
            default:
                print("bug")
            }
            
        // Setup the decimals quiz
        case .decimals:
            switch question {
            case 1:
                // Header labels
                questionNumber = "Question 1 of 3"
                questionDescription = "Add the following decimals"
                questionLabel = "2.5 + 2.5"
                
                // Choice buttons
                choice1 = "5"
                choice2 = "2.5"
                choice3 = "1.1"
                choice4 = "2"
                
                // Set the correct choice
                correctChoice = 1
            case 2:
                // Header labels
                questionNumber = "Question 2 of 3"
                questionDescription = "Add the following decimals"
                questionLabel = "1.3 + 2.2"
                
                // Choice buttons
                choice1 = "4.3"
                choice2 = "3.4"
                choice3 = "3.5"
                choice4 = "1.7"
                
                // Set the correct choice
                correctChoice = 3
            case 3:
                // Header labels
                questionNumber = "Question 3 of 3"
                questionDescription = "Subtract the following decimals"
                questionLabel = "7.3 + 1.0"
                
                // Choice buttons
                choice1 = "7.1"
                choice2 = "8.3"
                choice3 = "8.1"
                choice4 = "9.3"
                
                // Set the correct choice
                correctChoice = 2
                
                // Since this is the last questions, the 'Next Question' button will end the quiz
                endQuiz = true
            default:
                print("bug")
            }
            
        // Setup the rounding quiz
        case .rounding:
            switch question {
            case 1:
                // Header labels
                questionNumber = "Question 1 of 5"
                questionDescription = "Round the decimal to the nearest hundredth"
                questionLabel = "3.789"
                
                // Set the correct answer
                correctString = "3.79"
            case 2:
                // Header labels
                questionNumber = "Question 2 of 5"
                questionDescription = "Round the decimal to the nearest tenth"
                questionLabel = "2.72"
                
                // Set the correct answer
                correctString = "2.7"
            case 3:
                    // Header labels
                    questionNumber = "Question 3 of 5"
                    questionDescription = "Round the decimal to the nearest tenth"
                    questionLabel = "6.78"
                    
                    // Set the correct answer
                    correctString = "6.8"
            case 4:
                    // Header labels
                    questionNumber = "Question 4 of 5"
                    questionDescription = "Round the decimal to the nearest hundredth"
                    questionLabel = "1.234"
                    
                    // Set the correct answer
                    correctString = "1.23"
            case 5:
                // Header labels
                questionNumber = "Question 5 of 5"
                questionDescription = "Round the decimal to the nearest tenth"
                questionLabel = "10.79"
                
                // Set the correct answer
                correctString = "10.8"
                
                // Since this is the last questions, the 'Next Question' button will end the quiz
                endQuiz = true
            default:
                print("bug")
            }
            
        // Setup the comparison quiz
        case .comparison:
            
            // Create an array with integers from zero to one hundred
            let numbers: [Int] = Array(0...100)
            
            // Randomly choose two numbers from the 'numbers' array
            let firstNumber = numbers.randomElement()!
            let secondNumber = numbers.randomElement()!
            
            switch question {
            case 1...9:
                // Header labels
                questionNumber = "Question \(question) of 10"
                questionDescription = "Enter the correct comparison symbol that belongs in the box ( >, <, or =)"
                questionLabel = "\(firstNumber) □ \(secondNumber)"
                
                // Set the correct answer
                if firstNumber > secondNumber {
                    correctString = ">"
                }
                else if firstNumber < secondNumber {
                    correctString = "<"
                }
                else if firstNumber == secondNumber {
                    correctString = "="
                }
            case 10:
                // Header labels
                questionNumber = "Question 10 of 10"
                questionDescription = "Enter the correct comparison symbol that belongs in the box ( >, <, or =)"
                questionLabel = "\(firstNumber) □ \(secondNumber)"
                
                // Set the correct answer
                if firstNumber > secondNumber {
                    correctString = ">"
                }
                else if firstNumber < secondNumber {
                    correctString = "<"
                }
                else if firstNumber == secondNumber {
                    correctString = "="
                }
                
                // Since this is the last questions, the 'Next Question' button will end the quiz
                endQuiz = true
            default:
                print("bug")
            }
            
        // Setup the multiplcation quiz
        case .multiplication:
            
            // Create an array with integers from zero to ten
            let numbers: [Int] = Array(0...10)
            
            // Randomly choose two numbers from the 'numbers' array
            let firstNumber = numbers.randomElement()!
            let secondNumber = numbers.randomElement()!
            
            switch question {
            case 1...9:
                // Header labels
                questionNumber = "Question \(question) of 10"
                questionDescription = "Multiply the following integers"
                questionLabel = "\(firstNumber) x \(secondNumber)"
                
                // Set the correct answer
                correctString = String(firstNumber * secondNumber)
            case 10:
                // Header labels
                questionNumber = "Question 5 of 10"
                questionDescription = "Multiply the following integers"
                questionLabel = "\(firstNumber) x \(secondNumber)"
                
                // Set the correct answer
                correctString = String(firstNumber * secondNumber)
                
                // Since this is the last questions, the 'Next Question' button will end the quiz
                endQuiz = true
            default:
                print("bug")
            }
        }
    }
}
