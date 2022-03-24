//
//  SampleApp.swift
//  Sample
//
//  Created by ky0me22 on 2022/03/24.
//

import SwiftUI

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            SampleView(viewModel: SampleViewModel(model: SampleModel()))
        }
    }
}
