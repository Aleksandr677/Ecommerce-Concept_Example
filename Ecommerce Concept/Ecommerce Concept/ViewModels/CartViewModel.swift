//
//  CartViewModel.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-06.
//

import Foundation

class CartViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var cartInfo = [MyCartModel]()
    @Published var basket = [Basket]()
    @Published var total = 0
    @Published var delivery = ""
    
    //MARK: - init
    init() {
        fetchCartInfo()
    }
    
    //MARK: - Functions
    func fetchCartInfo() {
        APICaller.shared.getMyCartInfo(complition: { results in
            switch results {
            case .success(let success):
                DispatchQueue.main.async {
                    self.cartInfo.append(success)
                    self.basket.append(contentsOf: success.basket)
                    self.total = success.total
                    self.delivery = success.delivery
                }
            case .failure(let failure):
                fatalError("Error: \(failure)")
            }
        })
    }
}
