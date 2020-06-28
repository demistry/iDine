//
//  AppView.swift
//  iDine
//
//  Created by David Ilenwabor on 29/06/2020.
//  Copyright © 2020 TQG Digital. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Image(systemName: "list.dash")
                Text("Menu")
            }
            
            OrderView().tabItem{
                Image(systemName: "square.and.pencil")
                Text("Order")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        AppView().environmentObject(order)
    }
}
