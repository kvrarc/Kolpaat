//
//  ContentView.swift
//  Kolpaat
//
//  Created by Kaku on 04/09/24.
//

import SwiftUI

struct KolpaatTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            KolpaatListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
                .badge(order.items.count)
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
        .accentColor(Color("BrandPrimary"))
    }
}

#Preview {
    KolpaatTabView()
}
