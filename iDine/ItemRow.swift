//
//  ItemRow.swift
//  iDine
//
//  Created by David Ilenwabor on 28/06/2020.
//  Copyright © 2020 TQG Digital. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var menuItem : MenuItem
    var body: some View {
        HStack{
            Image(menuItem.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            VStack(alignment: .leading) {
                Text(menuItem.name)
                    .font(.headline)
                Text(String("$\(menuItem.price)"))
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(menuItem: MenuItem.example)
    }
}
