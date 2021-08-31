//
//  Screen2ListItem.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import Foundation

struct Screen2ListItem: Identifiable {
    var id = UUID()
    
    let title = "Beautiful title"
    let subtitle = "\(UUID().uuidString)"
}
