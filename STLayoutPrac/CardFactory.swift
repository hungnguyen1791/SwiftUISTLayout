//
//  CardFactory.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 09/03/2023.
//

import Foundation
import SwiftUI

struct FeatureWideCard: View {

    var card: Card

    var body: some View {
        return Text("")
    }
}

struct FeatureSmallCard: View {

    var card: Card

    var body: some View {
        return Text("")
    }
}

struct StandardMiniCard: View {

    var card: Card

    var body: some View {
        return Text("")
    }
}

class CardFactory {

    func getCardUI(card: Card) -> any View {
        return Text("testing")
//        switch card.cardType {
//        case .featuredWide:
//            return FeatureWideCard(card: card)
//        case .FeaturedSmall:
//            return FeatureSmallCard(card: card)
//        case .StandardMini:
//            return StandardMiniCard(card: card)
//        }
    }

}
