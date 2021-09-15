//
//  Budget.swift
//  SimpliFi
//
//  Created by Diego on 2021/09/15.
//

import SwiftUI

struct Budget: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("lightGray")
                    .ignoresSafeArea()
                VStack {
                    Text("Income" .uppercased())
                        .padding()
                    
                    Text("Expense" .uppercased())
                        .padding()
                    
                    Spacer()
                }
                .background(Color("background"))
            }
            .navigationTitle("Budget")
        }
    }
}

struct Budget_Previews: PreviewProvider {
    static var previews: some View {
        Budget()
    }
}
