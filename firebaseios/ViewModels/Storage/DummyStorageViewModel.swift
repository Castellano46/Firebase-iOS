//
//  DummyStorageViewModel.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

import SwiftUI

class DummyStorageViewModel: StorageViewModelProtocol {
    func uploadImage(image: UIImage, onSuccess: @escaping (String) -> Void, onFailure: @escaping (Error) -> Void) {
        let dummyImageUrl = "https://example.com/dummy-image-url"
        onSuccess(dummyImageUrl)
    }
}
