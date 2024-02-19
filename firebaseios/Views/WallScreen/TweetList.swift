//
//  TweetList.swift
//  firebaseios
//
//  Created by Pedro on 13/2/24.
//

import SwiftUI

struct TweetList: View {
    @Binding var tweets: [Tweet]
    
    var body: some View {
        List(tweets) { tweet in
            TweetRow(tweet: tweet)
        }
        .navigationTitle("Tweets")
        .padding(.bottom)
    }
}
