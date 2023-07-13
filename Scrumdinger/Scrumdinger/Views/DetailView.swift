//
//  DetailView.swift
//  Scrumdinger
//
//  Created by 정승균 on 2023/06/22.
//

import SwiftUI

struct DetailView: View {
    @Binding var scrum: DailyScrum
    @State private var isPresentingEditView: Bool = false
    @State private var editingScrum = DailyScrum.emptyScrum
    
    var body: some View {
        List {
            Section("Meeting Info") {
                NavigationLink(destination: MeetingView(scrum: $scrum)) {
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
            Section("History") {
                if scrum.history.isEmpty {
                    Label("No meetings yet", systemImage: "calendar.badge.exclamationmark")
                }
                ForEach(scrum.history) { history in
                    HStack {
                        Image(systemName: "calendar")
                        Text(history.date, style: .date)
                    }
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button(action: {
                isPresentingEditView = true
                editingScrum = scrum
            }) {
                Text("Edit")
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationStack {
                DetailEditView(scrum: $editingScrum)
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button(action: {
                                isPresentingEditView = false
                            }) {
                                Text("Cancel")
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button(action: {
                                isPresentingEditView = false
                                scrum = editingScrum
                            }) {
                                Text("Done")
                            }
                        }
                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(scrum: .constant(DailyScrum.sampleData[0]))
        }
    }
}
