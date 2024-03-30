//
//  ContentView.swift
//  Test Assignment
//
//  Created by Arman on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Rectangle()
                    .stroke(Color.black, lineWidth: 5)
                    .frame(width: 120, height: 120)
                Text("Flag")
                    .font(.system(size: 50))
                    .animation(.default)
            }
            Spacer()
            Button(action: printer) {
                Text("Hit me!")
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: 30)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
        .padding()
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
