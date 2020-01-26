//
//  ContentView.swift
//  ondelete
//
//  Created by JFJ on 26/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationView{
        VStack{
            List {
                ForEach(numbers, id: \.self) {
                    Text("\($0)")
                }.onDelete(perform: removeRows)
            }
            Button("Add Number") {
                self.numbers.append(self.currentNumber)
                self.currentNumber += 1
            }
            }.navigationBarItems(leading: EditButton())
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
