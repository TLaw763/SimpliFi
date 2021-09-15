//
//  ContentView.swift
//  SimpliFi
//
//  Created by Diego on 2021/09/15.
//

import SwiftUI

struct ContentView: View {
    var accountCurrency = "R"
    var body: some View {
        NavigationView {
            ZStack {
                Color("grey")
                    .ignoresSafeArea()
                VStack {
                    Text("Summary" .uppercased())
                        .padding()
                    MainPill(category: "Total Income", pillColor: .blue, currency: accountCurrency, pillTotal: "40 000")
                        .padding(.horizontal)
                    MainPill(category: "Total Expense", pillColor: .red, currency: accountCurrency, pillTotal: "27 000")
                        .padding(.horizontal)
                    MainPill(category: "Nett Worth", pillColor: .yellow, currency: accountCurrency, pillTotal: "240 000")
                        .padding(.horizontal)
                    Text("Accounts" .uppercased())
                        .padding()
                    HStack{
                        NavigationLink (
                            destination: Account(),
                            label: {
                                SubPill(accountName: "Wallet", accountBalance: "300", currency: accountCurrency, pillColor: .blue)
                                    .padding(.leading)
                            })
                        SubPill(accountName: "Personal Savings", accountBalance: "1156", currency: accountCurrency, pillColor: .yellow)
                            .padding(.trailing)
                    }
                    HStack{
                        SubPill(accountName: "Other Savings", accountBalance: "1350", currency: accountCurrency, pillColor: .green)
                            .padding(.leading)
                        SubPill(accountName: "Spouce Savings", accountBalance: "789", currency: accountCurrency, pillColor: .red)
                            .padding(.trailing)
                    }
                    Spacer()
                }
                .background(Color("background"))
            }
            .navigationTitle("Dashboard")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

struct MainPill: View {
    let category: String
    var pillColor: Color
    var currency: String
    var pillTotal: String
    var body: some View {
        HStack(alignment: .top) {
            Text(category)
                .font(.body)
                .foregroundColor(pillColor)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(currency + pillTotal)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .padding()
        .background(Color("grey"))
        .cornerRadius(8)
    }
}

struct SubPill: View {
    var accountName: String
    var accountBalance: String
    var currency: String
    var pillColor: Color
    var body: some View {
        HStack {
            Text(accountName)
                .font(.caption)
                .foregroundColor(pillColor)
                .fontWeight(.bold)
            Spacer()
            Text(currency + accountBalance)
                .font(.body)
                .fontWeight(.semibold)
        }
        .padding()
        .background(Color("grey"))
        .cornerRadius(8)
    }
}
