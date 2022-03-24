//
//  SampleSubView.swift
//  Sample2
//
//  Created by ky0me22 on 2022/03/24.
//

import SwiftUI

struct SampleSubView: View {
    @Binding private var stars: String
    private var handler: (Int) -> Void
    
    init(stars: Binding<String>, action handler: @escaping (Int) -> Void) {
        self._stars = stars
        self.handler = handler
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text(stars)
            Button("Change Stars Length") {
                handler(Int.random(in: 1 ..< 10))
            }
        }
    }
}

struct SampleSubView_Previews: PreviewProvider {
    @State static var stars: String = ""
    
    static var previews: some View {
        SampleSubView(stars: $stars, action: { _ in })
    }
}
