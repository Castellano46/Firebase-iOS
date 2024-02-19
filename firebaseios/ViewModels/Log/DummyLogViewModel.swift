//
//  DummyLogViewModel.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

class DummyLogViewModel: LogViewModelProtocol {
    func log(screen: String, action: String) {
        print("Dummy log: Screen - \(screen), Action - \(action)")
    }

    func crash(screen: String, exception: Error) {
        print("Dummy crash: Screen - \(screen), Exception - \(exception.localizedDescription)")
    }
}
