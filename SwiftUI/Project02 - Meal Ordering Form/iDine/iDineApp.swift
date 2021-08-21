//
//  iDineApp.swift
//  iDine
//
//  Created by 박지원 on 2021/05/13.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
