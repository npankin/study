//
//  Screen2ListCell.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import Foundation
import SwiftUI

struct Screen2ListCell: View {
    @State var item: Screen2ListItem
    
    var body: some View {
        HStack {
            Image(systemName: "rectangle.grid.1x2.fill")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                Text(item.subtitle)
                    .font(Font.system(size: 12))
            }
        }
    }
    
}
