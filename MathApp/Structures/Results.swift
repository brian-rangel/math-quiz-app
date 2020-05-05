// Results.swift
// This file is used to keep track of the users results during a quiz

// A struct that will keep track of the results
struct Results {
    var totalCorrect: Int = 0
    var totalWrong: Int = 0
    var totalQuestions: Int = 0
    
    // Increment the amount of questions correct
    mutating func incrementCorrect() {
        totalCorrect += 1
        totalQuestions += 1
    }
    
    // Increment the amount of questions wrong
    mutating func incrementWrong() {
        totalWrong += 1
        totalQuestions += 1
    }
    
    // Return the percentage grade
    func percentGrade() -> Double {
        return (Double(totalQuestions - totalWrong) / Double(totalQuestions)) * 100
    }
    
    // Return the letter grade
    func letterGrade() -> String {
        let percentage = (Double(totalQuestions - totalWrong) / Double(totalQuestions)) * 100
        
        switch percentage {
        case ...59:
            return "F"
        case 60...69:
            return "D"
        case 70...79:
            return "C"
        case 80...89:
            return "B"
        case 90...:
            return "A"
        default:
            return "bug"
        }
    }
}
