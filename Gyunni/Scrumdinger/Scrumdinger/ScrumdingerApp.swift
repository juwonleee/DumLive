//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 정승균 on 2023/06/19.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
