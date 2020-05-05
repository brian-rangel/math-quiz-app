// ResultsView.swift
// This file is used for the Results View Controller
// This screen will display the results of how the user performed during a quiz

import UIKit

class ResultsView: UIViewController {
    
    // Label outlets
    @IBOutlet weak var gradePercentLabel: UILabel!
    @IBOutlet weak var totalCorrectLabel: UILabel!
    @IBOutlet weak var totalWrongLabel: UILabel!
    @IBOutlet weak var totalQuestionsLabel: UILabel!
    @IBOutlet weak var letterGradeLabel: UILabel!
    
    // Initialize variables - These variables are set by the data sent from the segue
    var gradePercent = 0.0
    var correctQuestions = 0
    var wrongQuestions = 0
    var totalQuestions = 0
    var letterGrade = ""
    
    // Run when the ViewController has been loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set labels
        gradePercentLabel.text = String(format: "%.02f%%", gradePercent)
        totalCorrectLabel.text = "Correct: \(correctQuestions)"
        totalWrongLabel.text = "Wrong: \(wrongQuestions)"
        totalQuestionsLabel.text = "Total questions: \(totalQuestions)"
        letterGradeLabel.text = "Letter Grade: \(letterGrade)"
    }
}
