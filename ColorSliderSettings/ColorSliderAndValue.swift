//
//  ColorSliderAndValue.swift
//  ColorSliderSettings
//
//  Created by Артур Сахбиев on 05.07.2022.
//

import SwiftUI

struct ColorSliderAndValue: View {
    @State private var value = Double.random(in: 0...255)
    var body: some View {
        SliderView(sliderValue: $value)
            
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack{
            Text("\(lround(sliderValue))")
                .font(.system(size: 15))
                .frame(width: 30)
                .lineLimit(1)
            Slider(value: $sliderValue, in:  0...255, step: 1)
        }
        .padding()
       
      
        
    }
}

struct ColorSliderAndValue_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderAndValue()
    }
}
