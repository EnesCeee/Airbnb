//
//  AirbnbListing.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import Foundation

struct AirbnbListing : Codable, Hashable, Identifiable {
    
    let id                          : String?
    let listingUrl                  : String?
    let name                        : String?
    let summary                     : String?
    let space                       : String?
    let description                 : String?
    let houseRules                  : String?
    let thumbnailUrl                : String?
    let mediumUrl                   : String?
    let xlPictureUrl                : String?
    let neighbourhood               : String?
    let amenities                   : [String]?
    let price                       : Int?
    
    // Host details
    let host_name:String?
    let host_since:String?
    let host_thumbnail_url:String?
    let host_picture_url:String?
    
    
    
}
