//
//  TabScreen3.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import Foundation
import SwiftUI
import Combine

struct TabScreen3: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        Button("Open modal") {
            viewModel.isScreen3ModalPresented.toggle()
        }
        .sheet(isPresented: $viewModel.isScreen3ModalPresented) {
            NavigationView {
                Text("Modal sheet")
                    .navigationBarTitle(Text("Title"), displayMode: .inline)
                    .navigationBarItems(trailing: Button("Done", action: {
                        viewModel.isScreen3ModalPresented.toggle()
                    }))
            }
        }
        
    }
}
