//
//  Order.swift
//  Kolpaat
//
//  Created by Kaku on 11/09/24.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Kolpaat] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Kolpaat) {
        items.append(appetizer)
    }
    
    func deleteItems(at offSets: IndexSet) {
        items.remove(atOffsets: offSets)
    }
}
