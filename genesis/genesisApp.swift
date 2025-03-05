//
//  genesisApp.swift
//  genesis
//
//  Created by ayman kiggundu on 05/03/2025.
//

import SwiftUI

@main
struct genesisApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
