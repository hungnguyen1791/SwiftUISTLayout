//
//  HomeView.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 07/03/2023.
//

import Foundation
import SwiftUI

struct HomeView: View {

    // prepare data source
    let cards = Model.getData()

    var iPadLayout = [GridItem(.flexible())]

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVGrid(columns: iPadLayout) {
                    EightContainerView()
                        .frame(width: geometry.size.width, height: 300)
                    AdsContainer()
                        .frame(width: geometry.size.width, height: 50)
                    EightContainerView()
                        .frame(width: geometry.size.width, height: 300)
                    AdsContainer()
                        .frame(width: geometry.size.width, height: 50)
                    FourContainerView()
                        .frame(width: geometry.size.width, height: 300)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
