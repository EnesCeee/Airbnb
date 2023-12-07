//
//  AirbnbListingsView.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import SwiftUI

struct AirbnbListingsView: View {
    @StateObject var viewModel=AirbnbListeningsViewModel()
    
    var body: some View {
        NavigationView {
            if(viewModel.listings.isEmpty){
                ProgressView().progressViewStyle(CircularProgressViewStyle())
            }
            else{
                List(viewModel.listings){ listing in
                    NavigationLink(destination: AirbnbDetailView(model:listing), label:{
                        AirbnbListingCardView(model: listing)
                    })
                }
            }
        }
        .onAppear{
            viewModel.fetchListings()
        }
    }
}

#Preview {
    AirbnbListingsView()
}
