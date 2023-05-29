//
//  QuestionData.swift
//  FinalProjectBOTWQuiz
//
//  Created by Andrew Iskowitz on 5/29/23.
//

import Foundation

struct Answer {
    var text: String
    var type: answerCorrect
}

enum answerCorrect: String {
    case correct = "correct", wrong = "wrong"
}

struct Question {
    var text: String
    var answers: [Answer]
}
