//
//  AppetizerListViewModel.swift
//  Kolpaat
//
//  Created by Kaku on 08/09/24.
//

import SwiftUI

@MainActor final class KolpaatListViewModel: ObservableObject {
    
    @Published var appetizers: [Kolpaat] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Kolpaat?
    
    //    func getAppetizers() {
    //        isLoading = true
    //        NetworkManager.shared.getAppetizers { [self] result in
    //            print("Network call completed")
    //            DispatchQueue.main.async { [self] in
    //                print("Entering main queue async block")
    //                isLoading = false
    //                print("Set isLoading to false")
    //                switch result {
    //                case .success(let appetizers):
    //                    self.appetizers = appetizers
    //
    //
    //                case .failure(let error):
    //                    switch error {
    //                    case .invalidResponse:
    //                        alertItem = AlertContext.invalidResponse
    //
    //                    case .invalidURL:
    //                        alertItem = AlertContext.invalidURL
    //
    //                    case .invalidData:
    //                        alertItem = AlertContext.invalidData
    //
    //                    case .unableToComplete:
    //                        alertItem = AlertContext.unableToComplete
    //                    }
    //                }
    //            }
    //        }
    //    }
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let kpError = error as? KPError {
                    switch kpError {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
    }
}
