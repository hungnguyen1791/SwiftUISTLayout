//
//  JsonHelper.swift
//  BTRevamp2019_iOSTests
//
//  Created by dpkarthi on 25/12/19.
//  Copyright © 2019 SPH. All rights reserved.
//

import Foundation

class JsonHelper {

    /// Converts the contents from the json file to NSData
    /// - parameter fileName: The name of the json file
    /// - returns: Json data from the requested json file.
    func getJsonData(fileName: String) -> NSData {

        let bundlePath = Bundle(for: type(of: self)).path(forResource: fileName, ofType: "json")
        guard let pathString = bundlePath else {
            fatalError("\(fileName).json not found")
        }

        let jsonData = try! NSData(contentsOfFile: pathString, options: .dataReadingMapped)
        return jsonData
    }

    /// Returns a json decoder for parsing data
    /// - returns: Json decoder
    func getJsonDecoder() -> JSONDecoder {

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return decoder
    }
}
