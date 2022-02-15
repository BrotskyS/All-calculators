//
//  CaloriesModel.swift
//  AllCalculators
//
//  Created by Sergiy Pik on 15.02.2022.
//

import SwiftUI

class CaloriesModel: ObservableObject {
    @Published var age: String = ""
    @Published var selectedSex  = 0
    var sex: [String] = ["Male", "Female"]
    @Published var weight: String = ""
    @Published var growth: String = ""
    
}

