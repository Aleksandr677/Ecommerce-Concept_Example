//
//  BestSellerViewModel.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import Foundation

class BestSellerViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var bestSellers = [BestSellerPhone]()
    
    //MARK: - init
    init() {
        fetchBestSellers()
    }
    
    //MARK: - Functions
    func fetchBestSellers() {
        APICaller.shared.getBestSellerPhone(complition: { results in
            switch results {
            case .success(let success):
                DispatchQueue.main.async {
                    self.bestSellers = success
                }
            case .failure(let failure):
                fatalError("Error: \(failure)")
            }
        })
    }
}
