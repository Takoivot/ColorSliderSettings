//
//  ContentView.swift
//  ColorSliderSettings
//
//  Created by Артур Сахбиев on 05.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 1...255)
    @State private var greenValue = Double.random(in: 1...255)
    @State private var blueValue = Double.random(in: 1...255)
    
    var body: some View {
        VStack(spacing: 5){
            Rectangle()
                .frame(width: 300, height: 200)
                .cornerRadius(20)
                .foregroundColor(Color(
                    red: redValue/255,
                    green: greenValue/255,
                    blue: blueValue/255)
                )
            ColorSliderAndValue(
                value: $redValue,
                textColor: .red)
            ColorSliderAndValue(
                value: $greenValue,
                textColor: .green)
            ColorSliderAndValue(
                value: $blueValue,
                textColor: .blue)
            Spacer()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

