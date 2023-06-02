//
//  QuestionData.swift
//  FinalProjectBOTWQuiz
//
//  Created by Andrew Iskowitz on 5/29/23.
//

import Foundation

struct Answer {
    var text: String
    var answer: String
}



struct Question {
    var text: String
    var answers: [Answer]
}
