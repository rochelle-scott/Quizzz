//
//  Question.swift
//  Quizzz
//
//  Created by Rochelle Scott on 10/10/2020.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    //initialiser
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
