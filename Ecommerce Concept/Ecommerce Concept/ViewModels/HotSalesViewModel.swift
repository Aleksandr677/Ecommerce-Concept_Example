//
//  HotSalesViewModel.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-03.
//

import Foundation

class HotSalesViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var hotSales = [HotSalesPhone]()
    
    //MARK: - init
    init() {
        fetchHotSales()
    }
    
    //MARK: - Functions
    func fetchHotSales() {
        APICaller.shared.getHotSalesPhone(complition: { results in
            switch results {
            case .success(let success):
                DispatchQueue.main.async {
                    self.hotSales = success                    
                }
            case .failure(let failure):
                fatalError("Error: \(failure)")
            }
        })
    }
}
