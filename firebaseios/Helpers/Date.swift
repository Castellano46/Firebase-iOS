//
//  CurrentDate.swift
//  firebaseios
//
//  Created by Pedro on 13/2/24.
//

import Foundation

extension Date {
    var currentDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMddHHmmss"
        return formatter.string(from: self)
    }
}
