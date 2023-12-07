//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by Enes Ceylan on 17.11.2023.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading)
        {
            GeometryReader{ proxy in
                ScrollView(.vertical){
                    //picture
                    AsyncImage(url: URL(string: model.host_picture_url ?? "")).aspectRatio(contentMode: .fit).clipped()
                        .frame(width: proxy.frame(in:.local).width, height: proxy.frame(in:.local).width)
                    //Info
                    Text("\(model.name ?? "")").bold().padding()
                    
                    if let price = model.price{
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))").padding()

                    }
                    
                    Text("Description: \(model.description ?? "")").padding()
                    Text("Summary: \(model.summary ?? "")").padding()
                    Text("House Rules: \(model.houseRules ?? "")").padding()
                    Text("Space: \(model.space ?? "")").padding()
                    
                    //Host Info
                    Text("About Your Host").font(.title2).bold()
                    HStack{
                        AsyncImage(url: URL(string: model.host_thumbnail_url ?? "")).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 75,height: 75).clipShape(Circle())
                        
                        Text(model.host_name ?? "").bold()
                    }.padding()
                    Text("Hosting since: \(model.host_since ?? "")")
                    
                }.frame(maxWidth: proxy.frame(in:.local).width)
                
            }
        }.navigationTitle(model.name ?? "Listing")
    }
}

