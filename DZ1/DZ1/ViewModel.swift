//
//  ViewModel.swift
//  DZ1
//
//  Created by Nikolay Pankin on 31.08.2021.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    @Published var screen2ListItems = [
        Screen2ListItem(),
        Screen2ListItem(),
        Screen2ListItem(),
        Screen2ListItem(),
        Screen2ListItem(),
        Screen2ListItem(),
    ]
    @Published var selectedTab = 0
    @Published var screen2OpenCellEvent = false
    @Published var isScreen3ModalPresented = false
}
