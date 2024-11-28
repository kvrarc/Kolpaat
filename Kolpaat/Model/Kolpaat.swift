//
//  Appetizer.swift
//  Kolpaat
//
//  Created by Kaku on 08/09/24.
//

import Foundation

struct Kolpaat: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Kolpaat]
}

struct MockData {
    static let sampleAppetizer  = Kolpaat(id: 0001, name: "Test Appetizer", description: "This is the description for my appetizer. It's yummy.", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let appetizers       = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne     = Kolpaat(id: 0001, name: "Test Appetizer One", description: "This is the description for my appetizer. It's yummy.", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let orderItemTwo     = Kolpaat(id: 0002, name: "Test Appetizer Two", description: "This is the description for my appetizer. It's yummy.", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let orderItemThree   = Kolpaat(id: 0003, name: "Test Appetizer Three", description: "This is the description for my appetizer. It's yummy.", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
