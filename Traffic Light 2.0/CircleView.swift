//
//  CircleView.swift
//  Traffic Light 2.0
//
//  Created by Илья Стратович on 20.04.23.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let light: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(light))
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, light: 0.5)
        
    }
}

