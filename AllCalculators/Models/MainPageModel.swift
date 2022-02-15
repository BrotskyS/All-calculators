//
//  MainPageModel.swift
//  AllCalculators
//
//  Created by Sergiy Pik on 15.02.2022.
//

import SwiftUI

struct Listitem: Hashable{
    var id = UUID()
    var name: String
}

class MainPageModel: ObservableObject {
    @Published var search: String = ""
    
    var list = [Listitem(name: "Calories"),Listitem(name: "Hello2")]
    
    var searchResults: [Listitem] {
          if search.isEmpty {
              return list
          } else {
              return list.filter { $0.name.contains(search) }
          }
      }
}


