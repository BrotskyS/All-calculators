//
//  Calories.swift
//  AllCalculators
//
//  Created by Sergiy Pik on 15.02.2022.
//

import SwiftUI

struct Calories: View {
    @StateObject var modelData: CaloriesModel = CaloriesModel()
    var body: some View {
        NavigationView{
            
            Form{
                TextField("Age", text:  $modelData.age)
                TextField("Weight", text:  $modelData.weight)
                Section {
                    Picker(selection: $modelData.selectedSex,    label:
                            Text("Select sex")
                           
                    ){
                        ForEach(0..<modelData.sex.count){
                            Text(self.modelData.sex[$0])
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                
            }
            .navigationBarTitle("Calories")
            
        }
        
    }
}

struct Calories_Previews: PreviewProvider {
    static var previews: some View {
        Calories()
    }
}
