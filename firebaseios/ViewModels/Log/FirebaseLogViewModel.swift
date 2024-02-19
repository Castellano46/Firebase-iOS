//
//  FirebaseLogViewModel.swift
//  firebaseios
//
//  Created by Pedro on 14/2/24.
//

import Firebase

class FirebaseLogViewModel: LogViewModelProtocol {
    
    func log(screen: String, action: String) {
        Analytics.logEvent(action, parameters: [
            AnalyticsParameterScreenName: screen,
            "custom_key": "blablabla"
        ])
    }
    
    func crash(screen: String, exception: Error) {
        
    }
    
}
