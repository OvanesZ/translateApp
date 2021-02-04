//
//  main.swift
//  translateApp
//
//  Created by Ovanes on 04.02.2021.
//

import Foundation



func translate(_ wordsEnglish: [String], _ wordsRussian: [String]) {
    
    var newWordsEnglishArr = wordsEnglish
    var newWordsRussianArr = wordsRussian
    
    while newWordsEnglishArr.count != 0 {
        
        var randomElement = Int.random(in: 0...newWordsEnglishArr.count-1)
        print("Как переводится \(newWordsEnglishArr[randomElement])?")
        var userAnswer: String = readLine(strippingNewline: true)!
        if userAnswer == newWordsRussianArr[randomElement] {
            print("Правильно!")
            newWordsEnglishArr.remove(at: randomElement)
            newWordsRussianArr.remove(at: randomElement)
        } else {
            print("Неправильно!")
        }
    }
}

var wordsEnglishArr: [String] = ["food", "hello", "world"]
var wordsRussianArr: [String] = ["еда", "привет", "мир"]

translate(wordsEnglishArr, wordsRussianArr)

