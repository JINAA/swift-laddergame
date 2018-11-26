//
//  InputView.swift
//  ladderGame2
//
//  Created by JINA on 18/11/2018.
//  Copyright © 2018 JINA KIM. All rights reserved.
//

import Foundation

struct InputView {
    func getPlayerName() -> Array<String>? {
        print("참여할 사람 이름을 입력하세요. (이름은 쉼표로 구분하세요)")
        let player = readLine()
        let playerName = player?.split(separator: ",").map(String.init)
        
        return playerName
    }
    
    func getLadderHeight() -> Int {
        print("최대 사다리 높이를 입력하세요")
        guard let height = readLine() else {
            return 0
        }
        let ladderHeigth = Int(height)
        
        return ladderHeigth ?? 0
    }
}
