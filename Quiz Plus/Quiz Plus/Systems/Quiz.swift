//
//  Quiz.swift
//  Quiz Plus
//
//  Created by Raymond Choy on 7/8/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import Foundation

class Quiz{
    private var questionList: [Question]
    private var currentQuestion: Int
    private var correctCount: Int
    private var inCorrectCount: Int
    
    init(){
        currentQuestion = 0
        correctCount = 0
        inCorrectCount = 0
        questionList = [Question.init(que: "How do you say 'greetings' in Hawaiian?", ans: "Aloha", c1: "Āwīwī", c2: "ʻAina", c3: "Mea hou", c4: "Aloha"),Question.init(que: "How do you say 'how are you' in Japanese?", ans: "Ogenkidesuka?", c1: "Anatahadare?", c2: "Koko wa doko?", c3: "Ogenkidesuka?", c4: "Ikura?"),Question.init(que: "How do you say 'you’re beautiful' in Chinese?", ans: "Nǐ fēicháng měi", c1: "Nǐ hěn féipàng", c2: "Nǐ fēicháng měi", c3: "Nǐ zhēn yǒuqù", c4: "Nǐ cuòle"),Question.init(que: "How do you say 'good bye' in Russian?", ans: "Proshchay", c1: "Dobroy nochi", c2: "Dobryy den'", c3: "Dobroye utro", c4: "Proshchay"),Question.init(que: "How do you say 'congratulations' in Portuguese?", ans: "Parabéns", c1: "Otima", c2: "Parabéns", c3: "Fantástica", c4: "Errada")]
    }
    
    func giveCurrentQuestion() -> Question{
        return questionList[currentQuestion]
    }
    
    func InputAnswer(input: Bool){
        if(input){
            correctCount += 1
        }else{
            inCorrectCount += 1
        }
    }
    
    func moveToNextQuestion() -> Bool{
        if(currentQuestion == questionList.count - 1){
            return false
        } else{
            currentQuestion += 1
            return true
        }
    }
    
    func giveTotalQuestionCount() -> Int{
        return questionList.count
    }
    
    func giveCurrentQuestionValue() -> Int{
        return (currentQuestion + 1)
    }
    
    func giveCorrectcount() -> Int{
        return correctCount
    }
}



