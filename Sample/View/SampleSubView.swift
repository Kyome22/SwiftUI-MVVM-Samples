//
//  SampleSubView.swift
//  Sample
//
//  Created by ky0me22 on 2022/03/24.
//

import SwiftUI

struct SampleSubView: View {
    @ObservedObject var viewModel: SampleViewModel
    
    init(viewModel: SampleViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text(viewModel.stars)
            Button("Change Stars Length") {
                viewModel.changeStarsLength(Int.random(in: 1 ..< 10))
            }
        }
    }
}

struct SampleSubView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSubView(viewModel: SampleViewModel(model: SampleModel()))
    }
}
