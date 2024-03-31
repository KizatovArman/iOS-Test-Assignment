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
            Spacer()
            VStack {
                Spacer()
                ScrollViewReader { scrollViewProxy in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            ForEach(viewModel.flagEmojis, id: \.self) { flag in
                                Text(flag)
                                    .font(.system(size: 50))
                                    .frame(width: 120, height: 120)
                                    .background(Color.white)
                                    .id(flag)
                                    .opacity(viewModel.currentFlag == flag ? 1.0 : 0.0)
                            }
                        }
                    }
                    .frame(width: 110, height: 110)
                    .border(Color.black, width: 5)
//                    Spacer()
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

func printer() {
    print("Hello")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
