//
//  TabScreen2.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import Foundation
import SwiftUI
import Combine

struct TabScreen2: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.screen2ListItems) { item in
                // TODO: не понял как перейти на ячейку с конкретным индексом
                NavigationLink(destination: ListCellDetailScreen(item: item), isActive: $viewModel.screen2OpenCellEvent, label: {
                    Screen2ListCell(item: item)
                })
                // TODO: так и не понял, как сделать анимацию перехода с селлы на детальное вью
                // по isActive: $viewModel.screen2OpenCellEvent
            }.navigationTitle(Text("List"))
        }
    }
}
