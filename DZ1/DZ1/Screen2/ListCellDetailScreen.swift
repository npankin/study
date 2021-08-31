//
//  ListCellDetailScreen.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import Foundation
import SwiftUI

struct ListCellDetailScreen: View {
    @State var item: Screen2ListItem
    
    var body: some View {
        VStack {
            Text(item.title)
            Text(item.subtitle)
        }
    }
}
