//
//  TabScreen.swift
//  DZ1
//
//  Created by Nikolay Pankin on 31.08.2021.
//

import Foundation
import SwiftUI

struct TabsScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab,
                content: {
                    // NOTE: Очень неадекватное поведение. если в TabScreen -> body вернуть EmptyView,
                    // то табы перестают рисоваться
                    TabScreen1()
                        .tabItem {
                            Text("Tab 1")
                            Image(systemName: "moon")
                        }
                        .tag(0)
                    TabScreen2()
                        .tabItem {
                            Image(systemName: "tornado")
                            Text("Tab 2")
                        }
                        .tag(1)
                    TabScreen3()
                        .tabItem {
                            Image(systemName: "snow")
                            Text("Tab 3")
                        }
                        .tag(2)
                })
    }
}
