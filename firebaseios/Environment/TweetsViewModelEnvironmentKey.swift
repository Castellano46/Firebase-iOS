//
//  TweetsViewModelEnvironmentKey.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

import SwiftUI

struct TweetsViewModelEnvironmentKey: EnvironmentKey {
    static let defaultValue: TweetsViewModelProtocol = FirebaseTweetsViewModel()
}

extension EnvironmentValues {
    var tweetsViewModel: TweetsViewModelProtocol {
        get { self[TweetsViewModelEnvironmentKey.self] }
        set { self[TweetsViewModelEnvironmentKey.self] = newValue }
    }
}
