//
//  MyControl.swift
//  DZ1
//
//  Created by Nikolay Pankin on 31.08.2021.
//

import Foundation
import SwiftUI

struct SliderView: View, UIViewRepresentable {
    
    @Binding var value: Float
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.addTarget(context.coordinator, action: #selector(context.coordinator.valueChanged(_:)), for: .valueChanged)
        slider.value = 6
        slider.maximumValue = 10
        return slider
    }
    
    static func dismantleUIView(_ uiView: UISlider, coordinator: Coordinator) {
        uiView.removeTarget(uiView, action: nil, for: .valueChanged)
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: _value)
    }
    
    class Coordinator: NSObject {
        
        init(value: Binding<Float>) {
            self._value = value
            super.init()
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            _value.wrappedValue = sender.value
        }
        @Binding private var value: Float
    }
}
