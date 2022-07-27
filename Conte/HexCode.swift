//
//  HexCode.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-25.
//

import Foundation
import UIKit

extension UIColor {
    var hexString: String {
        cgColor.components![0..<3]
            .map { String(format: "%02lX", Int($0 * 255)) }
            .reduce("#", +)
    }
}
