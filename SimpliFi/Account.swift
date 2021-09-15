//
//  Account.swift
//  SimpliFi
//
//  Created by Diego on 2021/09/15.
//

import SwiftUI

struct Account: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("grey")
                    .ignoresSafeArea()
                VStack {
                    Text("Income" .uppercased())
                        .padding()
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 32)
                    Spacer()
                }
                .background(Color("background"))
            }
            .navigationTitle("Accounts")
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
