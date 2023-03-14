//
//  Models.swift
//  STLayoutPrac
//
//  Created by Hung Nguyen on 07/03/2023.
//

import Foundation

enum CartType {
    case featuredWide
    case FeaturedSmall
    case StandardSummarySmall
    case StandardMini
//    case Advertisement

    var height: Float {
        switch self {
        case .featuredWide:
            return 405
        case .FeaturedSmall:
            return 405
        case .StandardSummarySmall:
            return 405
        case .StandardMini:
            return 134
        }
    }
}

class CardSize: Decodable {
    var regular: String = ""
    var compact: String = ""
}

class Card: Decodable {
    var cardSizes: CardSize?
}

class Model {

    private static var datas: [Card]?

    static func parseData() {
        let jsonHelper = JsonHelper()
        let jsonData = jsonHelper.getJsonData(fileName: "datajson")
        let decoder = jsonHelper.getJsonDecoder()

        do {
            var datas = try decoder.decode([Card].self, from: jsonData as Data)

            datas = datas.filter({ card in
                return !(card.cardSizes?.regular ?? "").isEmpty
            })

            for item in datas {
                debugPrint("TESTING - \(item.cardSizes?.regular ?? "")")
            }

            self.datas = datas
        } catch {
            debugPrint("Error - \(error.localizedDescription)")
        }
    }

    static func getData() -> [Card] {
        
        if datas == nil {
            parseData()
        }

        return self.datas ?? [Card]()
    }
}
