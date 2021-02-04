//
//  main.swift
//  translateApp
//
//  Created by Ovanes on 04.02.2021.
//

import Foundation



func translate(_ wordsAnother: [String], _ wordsRussian: [String]) {
    
    var newWordsEnglishArr = wordsAnother
    var newWordsRussianArr = wordsRussian
    
    while newWordsEnglishArr.count != 0 {
        
        var randomElement = Int.random(in: 0...newWordsEnglishArr.count-1)
        print("Как переводится \(newWordsEnglishArr[randomElement])?")
        var userAnswer: String = readLine(strippingNewline: true)!
        if userAnswer == newWordsRussianArr[randomElement] {
            print("Правильно! \n")
            newWordsEnglishArr.remove(at: randomElement)
            newWordsRussianArr.remove(at: randomElement)
        } else {
            print("Неправильно! \nПравильный ответ \(newWordsRussianArr[randomElement]) \n")
        }
    }
}

var wordsEnglishArr: [String] = ["food", "hello", "world"]
var wordsRussianArr: [String] = ["еда", "привет", "мир"]

var wordsArmenianArr: [String] = ["ныкар", "санр", "намак", "ор", "воски", "анун", "кин", "амусин", "аса", "ари", "ар", "мна", "уни", "им"]

var wordsRussianForArmenianArr: [String] = ["картина", "расческа", "письмо", "день", "золото", "имя", "жена", "муж", "скажи", "иди", "возьми", "останься", "он имеет", "мой"]

//translate(wordsEnglishArr, wordsRussianArr)

translate(wordsArmenianArr, wordsRussianForArmenianArr)



// добавить счетчик ошибок
// выделять цветом правильный и неправильный ответы

