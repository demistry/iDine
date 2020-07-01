//
//  FavoritesView.swift
//  iDine
//
//  Created by David Ilenwabor on 01/07/2020.
//  Copyright © 2020 TQG Digital. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorite : Favorites
    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(favorite.items){ item in
                        ItemRow(menuItem: item, isEnabled: false)
                    }
                }
            }
        .navigationBarTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static let favorite = Favorites()
    static var previews: some View {
        FavoritesView().environmentObject(favorite)
    }
}
