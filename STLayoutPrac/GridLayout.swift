//
//  GridLayout.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 07/03/2023.
//

import Foundation
import SwiftUI

class GridLayout {

    static func getMainLayout() -> [GridItem] {
        return [GridItem(.flexible())]
    }

    static func getLayoutForEightContainer() -> [GridItem] {
        
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

        return [GridItem]()
    }

    static func getLayoutForFourContainer() -> [GridItem] {
        return [GridItem]()
    }

    static func getLayoutForThreeContainer() -> [GridItem] {
        return [GridItem]()
    }
}
