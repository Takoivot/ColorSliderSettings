//
//  ContentView.swift
//  ColorSliderSettings
//
//  Created by Артур Сахбиев on 05.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ColorSliderAndValue()
            ColorSliderAndValue()
            ColorSliderAndValue()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
