//
//  littlelemonApp.swift
//  littlelemon
//

import SwiftUI

@main
struct lLemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

