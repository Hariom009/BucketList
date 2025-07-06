//
//  TouchandFaceID.swift
//  BucketList
//
//  Created by Hari's Mac on 06.07.2025.
//
import LocalAuthentication
import SwiftUI

struct TouchandFaceID: View {
    @State private var isUnlocked : Bool = false
    var body: some View {
        VStack{
            if isUnlocked{
                Text("Unlocked")
            }else{
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
    }
    func authenticate(){
        let context = LAContext()
        var error: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "We need to unlock your data"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){ success, authenticationError in
                if success{
                    // Autheticated successfully
                    isUnlocked = true
                }else {
                    // there was a problem
                }
            }
        }else {
            // no biometrics
        }
    }
}

#Preview {
    TouchandFaceID()
}
