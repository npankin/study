//
//  ContentView.swift
//  DZ1
//
//  Created by Nikolay Pankin on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabsScreen()
            .environmentObject(ViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
