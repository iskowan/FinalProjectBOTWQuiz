//
//  ResultsViewController.swift
//  FinalProjectBOTWQuiz
//
//  Created by Andrew Iskowitz on 5/29/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultsLavel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var responses: [Answer] = []
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateCorrectAnswers()
    }
    
    func calculateCorrectAnswers() {
        let frequencyOfAnswers = responses.reduce(into: [answerCorrect: Int]()) { (counts, answer) in
            if counts[answer.type] != nil {
                counts[answer.type, default: 0] += 1
            }
        }
        
    }
    
    //resultsLavel.text =
    
    
        // Do any additional setup after loading the view.
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
        
}
