//
//  main.swift
//  RandomBingo
//
//  Created by 허은정 on 2023/02/15.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoise : Int = 0

// 조건에 따른 반복문, 반복횟수를 정확히 알 수 없을때, 제어전송문(break)을 사용해서 정지함
while true {
    // 문자열 값으로 받아온다.
    var userInput = readLine()
    
    // if let 바인딩
    if let input = userInput {
        if let number = Int(input) {
            myChoise = number
        }
    }
    
    
    if computerChoice > myChoise {
        print("Up")
    }else if computerChoice < myChoise{
        print("Down")
    }else{
        print("Bingo")
        break
    }
}
