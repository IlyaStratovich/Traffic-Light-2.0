//
//  ContentView.swift
//  Traffic Light 2.0
//
//  Created by Илья Стратович on 20.04.23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            VStack {
                CircleView(color: .red, light: 0.5)
                CircleView(color: .yellow, light: 0.5)
                CircleView(color: .green, light: 0.5)
                Spacer()
                BottonView()
            }
            .padding()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

