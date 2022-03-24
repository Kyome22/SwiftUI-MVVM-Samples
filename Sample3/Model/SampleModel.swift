//
//  SampleModel.swift
//  Sample3
//
//  Created by ky0me22 on 2022/03/24.
//

import Foundation

struct SampleModel {
    var count: Int = 0
    var stars: String = "★"
    
    mutating func changeStarsLength(_ len: Int) {
        self.stars = [String](repeating: "★", count: len).joined()
    }
}
