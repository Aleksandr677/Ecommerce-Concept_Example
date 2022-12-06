//
//  ProductDetailViewModel.swift
//  Ecommerce Concept
//
//  Created by Христиченко Александр on 2022-12-04.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var productDetails = [DetailModel]()
    @Published var images: [String] = []
    @Published var rating: Int = 0
    @Published var title: String = ""
    @Published var isFavorites: Bool = true
    @Published var CPU: String = ""
    @Published var camera: String = ""
    @Published var capacity: [String] = []
    @Published var color: [String] = []
    @Published var price: Int = 0
    @Published var sd: String = ""
    @Published var ssd: String = ""
    
    
    //MARK: - init
    init() {
        fetchProductDetails()
    }
    
    //MARK: - Functions
    func fetchProductDetails() {
        APICaller.shared.getProductDetails(complition: { results in
            switch results {
            case .success(let success):
                DispatchQueue.main.async {
                    self.productDetails.append(success)
                    self.images = success.images
                    self.rating = Int(success.rating)
                    self.title = success.title
                    self.isFavorites = success.isFavorites
                    self.CPU = success.CPU
                    self.camera = success.camera
                    self.capacity = success.capacity
                    self.color.append(contentsOf: success.color.map({ $0 }))
                    self.price = success.price
                    self.sd = success.sd
                    self.ssd = success.ssd
                }
            case .failure(let failure):
                fatalError("Error: \(failure)")
            }
        })
    }
}
