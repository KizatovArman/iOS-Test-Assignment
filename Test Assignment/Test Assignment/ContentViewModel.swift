//
//  ContentViewModel.swift
//  Test Assignment
//
//  Created by Arman on 30.03.2024.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    let flagEmojis: [String] = ["🇺🇸", "🇬🇧", "🇫🇷", "🇩🇪", "🇰🇿", "🇯🇵"]
    @Published var currentIndex: Int = 0
    
    var currentFlag: String {
        flagEmojis[currentIndex]
    }
    
    func scrollToNextFlag(scrollViewProxy: ScrollViewProxy) {
        currentIndex = (currentIndex + 1) % flagEmojis.count
        let flagId = flagEmojis[currentIndex]
        withAnimation {
            scrollViewProxy.scrollTo(flagId, anchor: .top)
        }
    }
}
