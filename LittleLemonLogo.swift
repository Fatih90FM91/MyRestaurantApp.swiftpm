//
//  LittleLemonLogo.swift
//  MyRestaurantApp
//
//  Created by Frank Johansen on 30/12/2023.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        //EmptyView()
        Image("LittleLemon_Logo")
            .frame(width: 100, height: 50, alignment: .center)
             
    }
}


struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
