//
//  Home.swift
//  littlelemon
//
import SwiftUI

struct Home: View {
    @State private var tabSelection = 1
    let persistence = PersistenceController.shared
    var body: some View {
        // Default TabView Template for now
        TabView(selection: $tabSelection) {
            MainScreen()
                .tabItem { Label("Menu", systemImage: "list.dash") }
                .tag(1)
                .environment(\.managedObjectContext, persistence.container.viewContext)
            UserProfile(isTabView: true)
                .tabItem { Label("Profile", systemImage: "square.and.pencil") }
                .tag(2)
        }
        .accentColor(.primaryColor1)
        .navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
