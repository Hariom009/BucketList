//
//  SwiftDataButtonView.swift
//  BucketList
//
//  Created by Hari's Mac on 26.06.2025.
//

import SwiftUI

struct SwiftDataButtonView: View {
    // Similar to swiftdata here we can store the documents of app like the file of app where it is installed
    // It will be saved in that address only and provided default
    // Ham access kr skte h using wrtie(to:) and String(contentsOf:) , Data(contentsOf:)
    var body: some View {
        Button("Read and write"){
            let data = Data("Test Message".utf8)
            let url = URL.documentsDirectory.appending(path:"message.txt")
            do {
                try data.write(to: url,options: [.atomic,.completeFileProtection])
                let input = try String(contentsOf: url,encoding: .utf8)
                print(input)
            }catch{
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    SwiftDataButtonView()
}
