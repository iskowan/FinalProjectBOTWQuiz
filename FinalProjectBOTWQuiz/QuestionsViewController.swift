//
//  QuestionsViewController.swift
//  FinalProjectBOTWQuiz
//
//  Created by Andrew Iskowitz on 5/29/23.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionImageView: UIImageView!
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    var questionIndex = 0
    var imageNumber = 1
    
    func nextQuestion() {
        questionIndex += 1
        imageNumber += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
          performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    
    var questions: [Question] = [
        Question(text: "What is the name of this enemy?", answers: [
            Answer(text: "Bokoblin", type: .correct),
            Answer(text: "Goblin", type: .wrong),
            Answer(text: "Hobgoblin", type: .wrong),
            Answer(text: "Red Goblin", type: .wrong)
        ]),
        Question(text: "What is the name of this outfit?", answers: [
            Answer(text: "Bunny Hood", type: .wrong),
            Answer(text: "Bokoblin Hood", type: .wrong),
            Answer(text: "Ravio's Hood", type: .correct),
            Answer(text: "Tingles Hood", type: .wrong)
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Korok Sword", type: .wrong),
            Answer(text: "Wood Sword", type: .wrong),
            Answer(text: "Forest Dweller's Sword", type: .correct),
            Answer(text: "Leaf Blade", type: .wrong)
        ]),
        Question(text: "What is the name of this power?", answers: [
            Answer(text: "Ice", type: .wrong),
            Answer(text: "Cryonis", type: .correct),
            Answer(text: "Snow", type: .wrong),
            Answer(text: "Crynosis", type: .wrong)
        ]),
        Question(text: "What is the name of this character?", answers: [
            Answer(text: "Hetsu", type: .correct),
            Answer(text: "Beedle", type: .wrong),
            Answer(text: "Petsu", type: .wrong),
            Answer(text: "Yunobo", type: .wrong)
        ]),
        Question(text: "What is the name of this outfit?", answers: [
            Answer(text: "Koi Outfit", type: .wrong),
            Answer(text: "Fish Outfit", type: .wrong),
            Answer(text: "Rubber Outfit", type: .correct),
            Answer(text: "Lightning Outfit", type: .wrong),
        ]),
        Question(text: "What is the name of this enemy?", answers: [
            Answer(text: "Jelly", type: .wrong),
            Answer(text: "Blue Slug", type: .wrong),
            Answer(text: "Blue Jelly", type: .wrong),
            Answer(text: "Chuchu", type: .correct),
        ]),
        Question(text: "What is the name of this place?", answers: [
            Answer(text: "Twin Peaks", type: .wrong),
            Answer(text: "Dual Peaks", type: .wrong),
            Answer(text: "Double Peaks", type: .wrong),
            Answer(text: "Dueling Peaks", type: .correct),
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Royal Claymore", type: .wrong),
            Answer(text: "Feathered Edge", type: .correct),
            Answer(text: "Royal Sword", type: .wrong),
            Answer(text: "Royal Edge", type: .wrong),
        ]),
        Question(text: "What is the name of this character?", answers: [
            Answer(text: "Kilton", type: .correct),
            Answer(text: "Kiltson", type: .wrong),
            Answer(text: "Silkton", type: .wrong),
            Answer(text: "Kikilson", type: .wrong),
        ]),
        Question(text: "What is the name of this outfit", answers: [
            Answer(text: "Santa's Helper Outfit", type: .wrong),
            Answer(text: "Elf Outfit", type: .wrong),
            Answer(text: "Tingle's Outfit", type: .correct),
            Answer(text: "Shingle Outfit", type: .wrong),
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Dragonfruit", type: .wrong),
            Answer(text: "Voltfruit", type: .correct),
            Answer(text: "Rambutan", type: .wrong),
            Answer(text: "Pitaya", type: .wrong),
           
        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, type: <#T##answerCorrect#>),
//        ]),
    ]
    
    var answersChosen: [Answer] = []
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers

            switch sender {
            case button1:
                answersChosen.append(currentAnswers[0])
            case button2:
                answersChosen.append(currentAnswers[1])
            case button3:
                answersChosen.append(currentAnswers[2])
            case button4:
                answersChosen.append(currentAnswers[3])
            default:
                break
            }
        nextQuestion()
    }
    
    func newQuestion(using answers: [Answer]) {
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
        questionImageView.image = UIImage(named: "\(imageNumber)")
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        
        navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        newQuestion(using: currentAnswers)
        
    }
 
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
