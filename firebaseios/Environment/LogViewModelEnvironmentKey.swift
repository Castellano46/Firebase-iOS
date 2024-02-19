//
//  LogViewModelEnvironmentKey.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

import SwiftUI

struct LogViewModelEnvironmentKey: EnvironmentKey {
    static let defaultValue: LogViewModelProtocol = FirebaseLogViewModel()
}

extension EnvironmentValues {
    var logViewModel: LogViewModelProtocol {
        get { self[LogViewModelEnvironmentKey.self] }
        set { self[LogViewModelEnvironmentKey.self] = newValue }
    }
}
