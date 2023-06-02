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
    var score = 0
    
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
            Answer(text: "Bokoblin", answer: "correct"),
            Answer(text: "Goblin", answer: "wrong"),
            Answer(text: "Hobgoblin", answer: "wrong"),
            Answer(text: "Red Goblin", answer: "wrong")
        ]),
        Question(text: "What is the name of this outfit?", answers: [
            Answer(text: "Bunny Hood", answer: "wrong"),
            Answer(text: "Bokoblin Hood", answer: "wrong"),
            Answer(text: "Ravio's Hood", answer: "correct"),
            Answer(text: "Tingles Hood", answer: "wrong")
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Korok Sword", answer: "wrong"),
            Answer(text: "Wood Sword", answer: "wrong"),
            Answer(text: "Forest Dweller's Sword", answer: "correct"),
            Answer(text: "Leaf Blade", answer: "wrong")
        ]),
        Question(text: "What is the name of this power?", answers: [
            Answer(text: "Ice", answer: "wrong"),
            Answer(text: "Cryonis", answer: "correct"),
            Answer(text: "Snow", answer: "wrong"),
            Answer(text: "Crynosis", answer: "wrong")
        ]),
        Question(text: "What is the name of this character?", answers: [
            Answer(text: "Hetsu", answer: "correct"),
            Answer(text: "Beedle", answer: "wrong"),
            Answer(text: "Petsu", answer: "wrong"),
            Answer(text: "Yunobo", answer: "wrong")
        ]),
        Question(text: "What is the name of this outfit?", answers: [
            Answer(text: "Koi Outfit", answer: "wrong"),
            Answer(text: "Fish Outfit", answer: "wrong"),
            Answer(text: "Rubber Outfit", answer: "correct"),
            Answer(text: "Lightning Outfit", answer: "wrong"),
        ]),
        Question(text: "What is the name of this enemy?", answers: [
            Answer(text: "Jelly", answer: "wrong"),
            Answer(text: "Blue Slug", answer: "wrong"),
            Answer(text: "Blue Jelly", answer: "wrong"),
            Answer(text: "Chuchu", answer: "correct"),
        ]),
        Question(text: "What is the name of this place?", answers: [
            Answer(text: "Twin Peaks", answer: "wrong"),
            Answer(text: "Dual Peaks", answer: "wrong"),
            Answer(text: "Double Peaks", answer: "wrong"),
            Answer(text: "Dueling Peaks", answer: "correct"),
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Royal Claymore", answer: "wrong"),
            Answer(text: "Feathered Edge", answer: "correct"),
            Answer(text: "Royal Sword", answer: "wrong"),
            Answer(text: "Royal Edge", answer: "wrong"),
        ]),
        Question(text: "What is the name of this character?", answers: [
            Answer(text: "Kilton", answer: "correct"),
            Answer(text: "Kiltson", answer: "wrong"),
            Answer(text: "Silkton", answer: "wrong"),
            Answer(text: "Kikilson", answer: "wrong"),
        ]),
        Question(text: "What is the name of this outfit", answers: [
            Answer(text: "Santa's Helper Outfit", answer: "wrong"),
            Answer(text: "Elf Outfit", answer: "wrong"),
            Answer(text: "Tingle's Outfit", answer: "correct"),
            Answer(text: "Shingle Outfit", answer: "wrong"),
        ]),
        Question(text: "What is the name of this item?", answers: [
            Answer(text: "Dragonfruit", answer: "wrong"),
            Answer(text: "Voltfruit", answer: "correct"),
            Answer(text: "Rambutan", answer: "wrong"),
            Answer(text: "Pitaya", answer: "wrong"),
           
            
        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//        ]),
//        Question(text: <#T##String#>, answers: [
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//            Answer(text: <#T##String#>, answer: <#T##answerCorrect#>),
//        ]),
    ]
    
    func getScore() -> Int {
        return score
    }
    
    
    
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
        print(answersChosen)
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
