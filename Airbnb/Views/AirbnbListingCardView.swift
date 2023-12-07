//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model:AirbnbListing
    
    var body: some View {
        HStack(content: {
            AsyncImage(url:URL(string: model.host_thumbnail_url ?? "")).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .clipped()
            VStack{
                Text(model.name ?? "Listing").lineLimit(1).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                Text(model.description ?? "Listing").font(.title3).bold().lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Text(model.name ?? "Listing").lineLimit(3).foregroundColor(Color(.secondaryLabel)).font(.body)

            }

        })
    }
}
