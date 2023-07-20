//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Lee Juwon on 2023/06/08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums)
                .task {
                    do {
                        try await store.load()
                    } catch  {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
