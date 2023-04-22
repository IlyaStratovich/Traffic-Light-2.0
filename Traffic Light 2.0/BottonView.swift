//
//  BottonView.swift
//  Traffic Light 2.0
//
//  Created by Илья Стратович on 22.04.23.
//

import SwiftUI

struct BottonView: View {
    
    enum Color {
        case red
        case yellow
        case green
    }
    
    @State private var color = Color.red
    
    var body: some View {
        Button(action: {
            switch color {
            case .red:
                CircleView(color: .green, light: 0.5 )
                CircleView(color: .red, light: 1)
                color = .yellow
            case .yellow:
                CircleView(color: .red, light: 0.5)
                CircleView(color: .yellow, light: 1)
                color = .green
            case .green:
                CircleView(color: .yellow, light: 0.5)
                CircleView(color: .green, light: 1)
                color = .red
            }
            
        }) {
            Text("START")
                .font(.largeTitle)
                .fontWeight(.medium)
                .buttonStyle(.borderedProminent)
        }
        
    }
}

struct BottonView_Previews: PreviewProvider {
    static var previews: some View {
        BottonView()
    }
}
