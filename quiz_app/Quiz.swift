//
//  Quiz.swift
//  quiz_app
//
//  Created by User on 29/10/21.
//

import Foundation

struct Quiz {
    var questions = (question: "3 + 4 = 7?", answer: true)
    
    func getAnswer(answer: Bool) -> Bool {
        if (answer == questions.answer) {
            return true
        } else {
            return false
        }
    }
}
