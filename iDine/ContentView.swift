//
//  ContentView.swift
//  iDine
//
//  Created by David Ilenwabor on 28/06/2020.
//  Copyright © 2020 TQG Digital. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items){ item in
                            ItemRow(menuItem: item)
                        }
                    }
                }
            }.navigationBarTitle("Row of text")
            .listStyle(GroupedListStyle())
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
