//
//  AirbnbListingsResponse.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import Foundation

struct AirbnbListingsResponse:Codable{
    
    var totalCount : Int?      = nil
    var results    : [AirbnbListing]? = []
}
