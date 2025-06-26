//
//  ContentView.swift
//  BucketList
//
//  Created by Hari's Mac on 26.06.2025.
//

import SwiftUI
struct User:Identifiable{
    let id = UUID()
    var firstname: String
    var lastname: String
}

struct ContentView: View {
    let users = [
        User(firstname: "David", lastname: "Schwarznegar"),
        User(firstname: "Arnold", lastname: "Burger"),
        User(firstname: "Ketty", lastname: "Perry")
    ].sorted{
        $1.firstname < $0.firstname
    }
    var body: some View {
        List(users){ user in
            Text("\(user.lastname), \(user.firstname)")
        }
    }
}

#Preview {
    ContentView()
}
