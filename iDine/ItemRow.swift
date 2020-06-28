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
    static let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]

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
            Spacer()
            ForEach(menuItem.restrictions, id: \.self){ restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(Self.colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(menuItem: MenuItem.example)
    }
}
