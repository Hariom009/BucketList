//
//  SwitchStateUsingEnum.swift
//  BucketList
//
//  Created by Hari's Mac on 26.06.2025.
//

import SwiftUI
// Use of the enums to switch the View

struct LoadingView:View{
    var body: some View{
        Text("Loading")
    }
}
struct SuccessView:View{
    var body: some View{
        Text("Success")
    }
}
struct FailedView:View{
    var body: some View{
        Text("Failed")
    }
}
struct SwitchStateUsingEnum: View {
    enum LoadingState{
        case loading, success, failed
    }
    @State private var loadingState = LoadingState.loading
    var body: some View {
        switch loadingState {
        case .loading:
            LoadingView()
        case .success:
            SuccessView()
        case .failed:
            FailedView()
        }
    }
}

#Preview {
    SwitchStateUsingEnum()
}
