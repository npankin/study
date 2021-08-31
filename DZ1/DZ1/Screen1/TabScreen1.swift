//
//  TabScreen1.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import Foundation
import SwiftUI
import Combine

struct TabScreen1: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        Button("Open 2, select smth") {
            viewModel.selectedTab = 1
            viewModel.screen2OpenCellEvent = true
        }
    }
}
