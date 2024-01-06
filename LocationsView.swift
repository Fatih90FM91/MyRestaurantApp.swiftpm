//
//  LocationsView.swift
//  MyRestaurantApp
//
//  Created by Frank Johansen on 30/12/2023.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    @State private var displayReservationForm = false
    var body: some View {
        VStack {
            EmptyView() // 1
            Image("LittleLemon_Logo")
                .resizable()
                .frame(width: 100, height: 50, alignment: .center)
                .padding(.top, 50)
            
            
           // EmptyView() // 2
            Text(model.displayingReservationForm ? "Reservation Detail" : "Select a location")
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            
            
            NavigationView {
                //EmptyView() // 3
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                    
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            
            
       
           
        }
        .padding(.top, -10)
        
     

    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}


