//
//  Sample3App.swift
//  Sample3
//
//  Created by ky0me22 on 2022/03/24.
//

import SwiftUI

@main
struct Sample3App: App {
    var body: some Scene {
        WindowGroup {
            SampleView()
                .environmentObject(SampleViewModel(model: SampleModel()))
        }
    }
}
