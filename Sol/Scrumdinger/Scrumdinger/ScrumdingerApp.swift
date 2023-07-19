//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Lee Juwon on 2023/06/08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
