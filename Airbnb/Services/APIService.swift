//
//  APIService.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import Foundation

final class APIService{
    init() {
    }
    struct Constants {
        static let apiUrl=URL( string:"https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?limit=100"
        )  }
    
    public func getListings(completion: @escaping (Result<[AirbnbListing], Error>) -> Void) {
        guard let url = Constants.apiUrl else {
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                if let error {
                    completion(.failure(error))
                }
                return
            }
            
            do {
                let response = try JSONDecoder().decode(AirbnbListingsResponse.self, from: data)

                if let listings = response.results {
                    completion(.success(listings))
                } else {
                    let error = NSError(domain: "YourDomain", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to decode AirbnbListingsResponse"])
                    completion(.failure(error))
                }
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }

    
}
