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
                    Text("Personal Saving Account" .uppercased())
                        .padding()
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 32)
                        .foregroundColor(.blue)
                    MainPill(category: "Balance", pillColor: .blue, currency: "R", pillTotal: "135")
                        .padding()
                    Text("Transactions" .uppercased())
                    IncomePill()
                    ExpensePill()
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
