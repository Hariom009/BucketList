//
//  ContentView.swift
//  BucketList
//
//  Created by Hari's Mac on 26.06.2025.
//

import SwiftUI
struct User:Comparable,Identifiable{
    let id = UUID()
    var firstname: String
    var lastname: String
    
    // On this < - operator overloading i got asked question in interview
    // When we use some operator for general use but here we are comparing the objects of user
    // By conforming to comparable we got access to < & > in the func to use
    
    static func <(lhs:User, rhs:User)-> Bool{
        lhs.lastname < rhs.lastname
    }
    // Now swift knows that when i call sorted() on users then it should use this function to compare 
}

struct ContentView: View {
    let users = [
        User(firstname: "David", lastname: "Schwarznegar"),
        User(firstname: "Arnold", lastname: "Burger"),
        User(firstname: "Ketty", lastname: "Perry")
    ].sorted()
    
    var body: some View {
        List(users){ user in
            Text("\(user.lastname), \(user.firstname)")
        }
    }
}

#Preview {
    ContentView()
}
