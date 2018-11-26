//
//  ResultView.swift
//  ladderGame2
//
//  Created by JINA on 18/11/2018.
//  Copyright © 2018 JINA KIM. All rights reserved.
//

import Foundation

struct ResultView {
    enum LadderLine: String{
        case vertical = "|"
        case horizon = "-----"
        case none = "     "
    }
    
    //불타입 배열의 값이 참이면 horizon 대입
    func drawHorizon(randomLadder: Bool) -> String {
        return randomLadder ? LadderLine.horizon.rawValue : LadderLine.none.rawValue
    }
    
    // drawHorizon에서 만든 문자열을 vertical과 출력해주기
    func drawVertical(_ ladder: [Bool], _ player: Int) {
        for val in 0 ..< player - 1{
            let horizon = drawHorizon(randomLadder: LadderStep().random(ladder)[val])
            print (horizon, terminator : LadderLine.vertical.rawValue)
        }
    }
    
    // drawVertical를 사다리 높이 만큼 그려주기
    func drawLadder(_ ladder: [Bool], _ name: Int, _ height: Int) {
        for _ in 0 ..< height  {
            print ("  " + LadderLine.vertical.rawValue, terminator: "")
            drawVertical(ladder, name)
            print()
        }
    }
    
    //이름 출력하기
    func printNames (_ name:[String]) {
        for i in 0 ..< name.count {
            print("",name[i],separator: " ", terminator: " ")
        }
        print ()
    }
    
   
}
