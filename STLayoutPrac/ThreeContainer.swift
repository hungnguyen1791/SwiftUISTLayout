//
//  ThreeContainer.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 07/03/2023.
//

import Foundation
import SwiftUI

struct ThreeContainerView: View {

    let vGridlayout = [
        GridItem(.flexible())
    ]

    var body: some View {
        GeometryReader { geometry in
            LazyVGrid(columns: vGridlayout, spacing: 0) {
                Text("item 6")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height / 3)
                    .background(Color.yellow)
                Text("item 7")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height / 3)
                    .background(Color.green)
                Text("item 8")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height / 3)
                    .background(Color.blue)
            }
        }
    }
}

struct ThreeContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeContainerView()
    }
}
