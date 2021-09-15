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
                Color("grey")
                    .ignoresSafeArea()
                VStack {
                    Text("Income" .uppercased())
                        .padding()
                    IncomePill()
                        .padding(.horizontal)
                    Text("Expense" .uppercased())
                        .padding()
                    ExpensePill()
                        .padding(.horizontal)
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

struct IncomePill: View {
    var body: some View {
        VStack {
            HStack {
                Text("Total Income")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("R 1000")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
            HStack {
                Text("Income Item 01")
                Spacer()
                VStack {
                    Text("R 1000")
                        .font(.headline)
                    Text("10 Sept. 2021")
                        .font(.caption)
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal)
            HStack {
                Text("Income Item 02")
                Spacer()
                VStack {
                    Text("R 1000")
                        .font(.headline)
                    Text("10 Sept. 2021")
                        .font(.caption)
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal)
        }
        .background(Color("grey"))
    }
}

struct ExpensePill: View {
    var body: some View {
        VStack {
            HStack {
                Text("Total Expenses")
                    .foregroundColor(.yellow)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("R 1000")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
            HStack {
                Text("Income Item 01")
                Spacer()
                VStack {
                    Text("R 1000")
                        .font(.headline)
                    Text("10 Sept. 2021")
                        .font(.caption)
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal)
            HStack {
                Text("Income Item 02")
                Spacer()
                VStack {
                    Text("R 1000")
                        .font(.headline)
                    Text("10 Sept. 2021")
                        .font(.caption)
                }
                .padding(.vertical, 8)
            }
            .padding(.horizontal)
        }
        .background(Color("grey"))
    }
}

