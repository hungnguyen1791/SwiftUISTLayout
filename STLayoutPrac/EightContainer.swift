//
//  EightContainer.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 07/03/2023.
//

import Foundation
import SwiftUI

struct EightContainerView: View {

    let hGridlayout = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible())
    ]

    let firstRowLayout = [
        GridItem(.fixed(UIScreen.main.bounds.width*3/4), spacing: 0),
        GridItem(.fixed(UIScreen.main.bounds.width/4))
    ]

    let secondRowLayout = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible())
    ]

    var body: some View {
        GeometryReader { geometry in
            LazyHGrid(rows: hGridlayout, spacing: 0) {
                LazyVGrid(columns: firstRowLayout, alignment: .leading, spacing: 0) {
                    Text("item 1")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: geometry.size.height/2)
                        .background(Color.blue)
                    Text("item 2")
                        .frame(minWidth: 0, maxWidth: geometry.size.width/4)
                        .frame(height: geometry.size.height/2)
                        .background(Color.red)
                }
                LazyVGrid(columns: secondRowLayout, spacing: 0) {
                    Text("item 3")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: geometry.size.height/2)
                        .background(Color.red)
                    Text("item 4")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: geometry.size.height/2)
                        .background(Color.green)
                    Text("item 5")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: geometry.size.height/2)
                        .background(Color.gray)
                    ThreeContainerView()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: geometry.size.height/2)
                        .background(Color.purple)
                }
            }
        }
    }
}

struct EightContainerView_Previews: PreviewProvider {
    static var previews: some View {
        EightContainerView()
    }
}
