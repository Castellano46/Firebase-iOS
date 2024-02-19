//
//  StorageViewModelProtocol.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

import SwiftUI

protocol StorageViewModelProtocol {
    func uploadImage(image: UIImage, onSuccess: @escaping (String) -> Void, onFailure: @escaping (Error) -> Void)
}
