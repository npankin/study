//
//  ModalScreen.swift
//  DZ1
//
//  Created by Nikolay Pankin on 31.08.2021.
//

import Foundation
import SwiftUI

struct ModalScreen: View {
    @State private var sliderValue: Float = 0
    var body: some View {
        VStack {
            Text("\(sliderValue)")
            SliderView(value: $sliderValue)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}
