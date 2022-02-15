//
//  AllCalculators.swift
//  AllCalculators
//
//  Created by Sergiy Pik on 15.02.2022.
//

import SwiftUI

struct calculatorItem{
    var  name: String
}

struct AllCalculators: View {
    @StateObject var mainData: MainPageModel = MainPageModel()
    @State private var isEditing = false
    
    
    var body: some View {
        
        NavigationView {
            VStack{
                HStack{
                    TextField("Search", text:  $mainData.search)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            withAnimation{
                                self.isEditing = true
                            }
                        }
                    
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.mainData.search = ""
                            
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        
                    }
                }
                
                List{
                    
                    ForEach(mainData.searchResults, id: \.self) { value in
                        NavigationLink(destination: Calories()){
                            Text(value.name)
                        }
                    }
                    
                    
                }
                .navigationBarTitle("All calculators")
                
            }
        }
    }
}

struct AllCalculators_Previews: PreviewProvider {
    static var previews: some View {
        AllCalculators()
    }
}
