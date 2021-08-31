//
//  ContentView.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var tab = 0
    
    var body: some View {
        TabScreen()
            .environmentObject(ViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
