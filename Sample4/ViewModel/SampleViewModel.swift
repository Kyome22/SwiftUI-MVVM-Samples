//
//  SampleViewModel.swift
//  Sample4
//
//  Created by ky0me22 on 2022/03/24.
//

import Foundation
import Combine

// assign使うパターン
@MainActor
class SampleViewModel: ObservableObject {
    @Published var count: Int
    @Published var stars: String
    
    private var model: SampleModel
    
    init(model: SampleModel) {
        self.model = model
        self.count = model.count
        self.stars = model.stars
                
        self.model.$count.assign(to: &$count)
        self.model.$stars.assign(to: &$stars)
    }
    
    func changeStarsLength(_ len: Int) {
        model.changeStarsLength(len)
    }
}

// sink使うパターン
//@MainActor
//class SampleViewModel: ObservableObject {
//    @Published var count: Int
//    @Published var stars: String
//
//    private var model: SampleModel
//    private var cancellables = Set<AnyCancellable>()
//
//    init(model: SampleModel) {
//        self.model = model
//        self.count = model.count
//        self.stars = model.stars
//
//        self.model.$count
//            .sink(receiveValue: { count in
//                self.count = count
//            })
//            .store(in: &cancellables)
//
//        self.model.$stars
//            .sink(receiveValue: { stars in
//                self.stars = stars
//            }).store(in: &cancellables)
//    }
//
//    func changeStarsLength(_ len: Int) {
//        model.changeStarsLength(len)
//    }
//}

