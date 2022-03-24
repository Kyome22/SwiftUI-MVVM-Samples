//
//  SampleViewModel.swift
//  Sample
//
//  Created by ky0me22 on 2022/03/24.
//

import Foundation

@MainActor
class SampleViewModel: ObservableObject {
    @Published var model: SampleModel
    
    init(model: SampleModel) {
        self.model = model
    }
    
    var count: Int {
        get {
            return model.count
        }
        set {
            model.count = newValue
        }
    }
    
    var stars: String {
        return model.stars
    }
    
    func changeStarsLength(_ len: Int) {
        model.changeStarsLength(len)
    }
}
