//
//  FourContainer.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 07/03/2023.
//

import Foundation
import SwiftUI

struct FourContainerView: View {

    let vGridlayout = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
    ]

    var body: some View {
        GeometryReader { geometry in
            LazyVGrid(columns: vGridlayout, spacing: 0) {
                Text("item 1")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height)
                    .background(Color.yellow)
                Text("item 2")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height)
                    .background(Color.green)
                Text("item 3")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height)
                    .background(Color.blue)
                Text("item 3")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: geometry.size.height)
                    .background(Color.purple)
            }
        }
    }
}

struct FourContainerView_Previews: PreviewProvider {
    static var previews: some View {
        FourContainerView()
    }
}
