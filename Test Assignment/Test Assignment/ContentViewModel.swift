//
//  ContentViewModel.swift
//  Test Assignment
//
//  Created by Arman on 30.03.2024.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    let flagEmojis: [String] = ["🇺🇸", "🇬🇧", "🇫🇷", "🇩🇪", "🇰🇿", "🇯🇵"]
    @Published var currentFlagIndex: Int = 0
    
    var currentFlag: String {
        return flagEmojis[currentFlagIndex]
    }
    
    func changeFlag() {
        currentFlagIndex = (currentFlagIndex + 1) % flagEmojis.count
    }
}
