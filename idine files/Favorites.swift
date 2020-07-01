//
//  Favorites.swift
//  iDine
//
//  Created by David Ilenwabor on 01/07/2020.
//  Copyright © 2020 TQG Digital. All rights reserved.
//

import SwiftUI

class Favorites : ObservableObject{
    @Published var items : [MenuItem] = []
    
    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
