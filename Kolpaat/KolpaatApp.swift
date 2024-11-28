//
//  KolpaatApp.swift
//  Kolpaat
//
//  Created by Kaku on 04/09/24.
//

import SwiftUI

@main
struct KolpaatApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            KolpaatTabView().environmentObject(order)
        }
    }
}
