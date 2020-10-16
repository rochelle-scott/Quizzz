//
//  QuizBrain.swift
//  Quizzz
//
//  Created by Rochelle Scott on 10/10/2020.
//

import Foundation

//QuizBrain holds all the logic. It has properties which say "what it's like" and methods which say "what it can do" this is shown witin the struct below (A struct is essentially a blueprint where eventual objects will be created from it (think car example)). When a object is eventually created, we have essentially taken our blueprint and initialised it ( init() ) which turns it into the actual object.


struct QuizBrain {
    
    //Want more questions so need to create array. Need answers to validate questions, so need to create 2D array.
    //2d array has been changed to a struct.
    //quiz array now contains a collection of question objects.
    
    let quiz = [
        Question(q: "Arsenal won the FA Cup 14 times.", a: "True"),
        Question(q: "40 teams compete within the Premier League.", a: "False"),
        Question(q: "Premier League team Burnley is also known by the nickname 'Toffees'.", a: "False"),
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    
    ]
    
    //variable to keep track of which question the user is currently reading.
    var questionNumber = 0      //variables known as 'property' of that struct as it lives in a struct.
    var score = 0
    
   mutating func checkAnswer(_ userAnswer: String) -> Bool{     //function within a struct is known as a 'method'.
        //Check to see if there chosen answer is correct.
    if userAnswer == quiz[questionNumber].answer {
            score += 1 //Add one point to the score each time the user gets question correct.
                    //As its changing the property each time, have to use the 'mutating keyword'.
      //User got it right.
            return true
        } else {
            //User got it wrong.
            return false
        }
    }
    
    func getScore() -> Int {
         return score
        }
    
    //function has an output which is a String data type
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    //Mutating func allows a method or property to be changed from within a struct. As without keyword the .self is treated as a constant (let), therefore, it cannot be changed. Note: Any keywork marked by 'let' is immutable (cannot be changed)
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1 //questionNumber = questionNumber + 1
        } else {
            questionNumber = 0 // this will fetch first question again. It allows to loop.
            score = 0 //this will reset users score back to zero when quiz restarts.
        }
    }
    
 
    
}
