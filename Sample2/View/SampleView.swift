//
//  SampleView.swift
//  Sample2
//
//  Created by ky0me22 on 2022/03/24.
//

import SwiftUI

struct SampleView: View {
    @StateObject var viewModel: SampleViewModel
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(viewModel.count)")
            Button("Count Up") {
                viewModel.count += 1
            }
            SampleSubView(stars: $viewModel.stars) { len in
                viewModel.changeStarsLength(len)
            }
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView(viewModel: SampleViewModel(model: SampleModel()))
    }
}
