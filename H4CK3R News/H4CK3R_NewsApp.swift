//
//  H4CK3R_NewsApp.swift
//  H4CK3R News
//
//  Created by Dakshi Goel on 15/05/24.
//

import SwiftUI

@main
struct H4CK3R_NewsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(networkManager: NetworkManager())
        }
    }
}
