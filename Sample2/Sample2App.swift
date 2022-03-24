//
//  Sample2App.swift
//  Sample2
//
//  Created by ky0me22 on 2022/03/24.
//

import SwiftUI

@main
struct Sample2App: App {
    var body: some Scene {
        WindowGroup {
            SampleView(viewModel: SampleViewModel(model: SampleModel()))
        }
    }
}
