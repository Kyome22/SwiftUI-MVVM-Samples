//
//  SampleModel.swift
//  Sample4
//
//  Created by ky0me22 on 2022/03/24.
//

import Foundation

final class SampleModel {
    @Published var count: Int = 0
    @Published var stars: String = "★"
    
    func changeStarsLength(_ len: Int) {
        self.stars = [String](repeating: "★", count: len).joined()
    }
}
