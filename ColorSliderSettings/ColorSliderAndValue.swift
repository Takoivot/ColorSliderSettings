//
//  ColorSliderAndValue.swift
//  ColorSliderSettings
//
//  Created by Артур Сахбиев on 05.07.2022.
//

import SwiftUI

struct ColorSliderAndValue: View {
    @Binding var value: Double
    let textColor: Color
    var body: some View {
        SliderView(sliderValue: $value, textColor: textColor)
            
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var textColor: Color
    
    var body: some View {
        HStack{
            Text("\(lround(sliderValue))")
                .font(.system(size: 15))
                .frame(width: 30)
                .lineLimit(1)
                .foregroundColor(textColor)
            Slider(value: $sliderValue, in:  0...255, step: 1)
        }
        .padding()
    }
}

struct ColorSliderAndValue_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderAndValue( value: .constant(0), textColor: .black)
    }
}

