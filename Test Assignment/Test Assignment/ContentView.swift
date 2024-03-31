//
//  ContentView.swift
//  Test Assignment
//
//  Created by Arman on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                ScrollViewReader { scrollViewProxy in
                    Spacer()
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            ForEach(viewModel.flagEmojis, id: \.self) { flag in
                                Text(flag)
                                    .font(.system(size: 50))
                                    .frame(width: 120, height: 120)
                                    .background(Color.white)
                                    .id(flag)
                            }
                        }
                    }
                    .frame(width: 110, height: 110)
                    .border(Color.black, width: 5)
                    .disabled(true)
                    Spacer()
                    Button(action: {
                        viewModel.scrollToNextFlag(scrollViewProxy: scrollViewProxy)
                    }) {
                        Text("Hit me!")
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 30)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
