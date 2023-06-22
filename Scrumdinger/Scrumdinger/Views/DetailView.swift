//
//  DetailView.swift
//  Scrumdinger
//
//  Created by 정승균 on 2023/06/22.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section("Meeting Info") {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .foregroundColor(.accentColor)
                        .font(.headline)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
            }
            Section("Attendees") {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
