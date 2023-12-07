//
//  AirbnbListeningsViewModel.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import Foundation

final class AirbnbListeningsViewModel: ObservableObject{
    private let service=APIService()
    
    @Published var listings:[AirbnbListing]=[]
    
    public func fetchListings(){
        service.getListings{[weak self] result in
            switch result {
            case .success(let models):
                self?.listings = models
                print(models)
            case .failure:
                break
            }
        }
    }
}
