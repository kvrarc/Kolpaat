//
//  KPButton.swift
//  Kolpaat
//
//  Created by Kaku on 10/09/24.
//

import SwiftUI

struct KPButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50).foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    KPButton(title: "Test Title")
}
