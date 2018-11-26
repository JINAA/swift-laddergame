//
//  LadderStep.swift
//  ladderGame2
//
//  Created by JINA on 18/11/2018.
//  Copyright © 2018 JINA KIM. All rights reserved.
//

import Foundation

struct LadderStep {
    //불값 배열의 원소를 랜덤하게 false 혹은 true로 만들기
    func random(_ ladder : [Bool]) -> [Bool]{
        var ladders = ladder
        for row in 0 ..< ladder.count {
            ladders[row] = arc4random_uniform(2) == 0 ? true : false
        }
        return ladders
    }
}
