// ChooseQuizView.swift
// This file is used for the Choose Quiz View Controller
// This screen will be used to send data through a segue when the user chooses a topic

import UIKit

class ChooseQuizView: UIViewController {
    
    // Send data to the next screen when the user selects a topic
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Switch case to check which data to send and where to send it to
        switch segue.identifier {
            
        // Set the chosen topic to addition
        case "Addition":
            if let destination = segue.destination as? MultipleChoiceView {
            destination.chosenTopic = .addition
        }
        
        // Set the chosen topic to subtraction
        case "Subtraction":
            if let destination = segue.destination as? MultipleChoiceView {
            destination.chosenTopic = .subtraction
        }
        
        // Set the chosen topic to decimals
        case "Decimals":
            if let destination = segue.destination as? MultipleChoiceView {
            destination.chosenTopic = .decimals
        }
        // Set the chosen topic to rounding
        case "Rounding":
            if let destination = segue.destination as? FreeResponseView {
            destination.chosenTopic = .rounding
        }
        
        // Set the chosen topic to comparison
        case "Comparison":
            if let destination = segue.destination as? FreeResponseView {
            destination.chosenTopic = .comparison
        }
        
        // Set the chosen topic to word problems
        case "Multiplication":
            if let destination = segue.destination as? FreeResponseView {
            destination.chosenTopic = .multiplication
        }
        default:
            print("segue bug")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
