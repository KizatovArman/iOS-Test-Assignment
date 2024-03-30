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
                Spacer()
                ZStack {
                    Rectangle()
                        .stroke(Color.black, lineWidth: 5)
                        .frame(width: 120, height: 120)
                    Text(viewModel.currentFlag)
                        .font(.system(size: 50))
                        .transition(.move(edge: .top))
                }
                Spacer()
                Button(action: {
                    viewModel.changeFlag()
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

func printer() -> Void {
    print("Hello world")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
