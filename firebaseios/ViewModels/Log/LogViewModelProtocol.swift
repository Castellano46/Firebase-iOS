//
//  LogViewModelProtocol.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

protocol LogViewModelProtocol {
    func log(screen: String, action: String)
    func crash(screen: String, exception: Error)
}
