//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by jisukwon on 2023/06/13.
//

import SwiftUI

struct ScrumsView: View {
    
    @Binding var scrums : [DailyScrum]
    @Environment(\.scenePhase) private var scenePhase
    @State private var isPresetingNewScrumView = false
    //바디 안에 넣게 되면 바디 스코프 안에서만 쓸 수 있다.
    let saveAction: ()->Void
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(dailyScrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresetingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New scrum")
            }
        }
        .sheet(isPresented: $isPresetingNewScrumView) {
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresetingNewScrumView)
        }
        .onChange(of: scenePhase) { newValue in
            if newValue == .inactive {
                saveAction()
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData), saveAction: {})
    }
}
