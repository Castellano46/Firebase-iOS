//
//  AuthViewModelInterface.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

import Foundation

protocol AuthViewModelProtocol {
    func register(email: String, password: String, onSuccess: @escaping (User) -> Void, onFailure: @escaping (Error) -> Void)
    func login(email: String, password: String, onSuccess: @escaping (User) -> Void, onFailure: @escaping (Error) -> Void)
    func isUserLoggedIn(onSuccess: @escaping (Bool) -> Void, onFailure: @escaping (Error) -> Void)
    func recoverPassword(email: String, onSuccess: @escaping () -> Void, onFailure: @escaping (Error) -> Void)
    func getUser(onSuccess: @escaping (User) -> Void, onFailure: @escaping (Error) -> Void)
    func logout(onSuccess: @escaping () -> Void, onFailure: @escaping (Error) -> Void)
}
