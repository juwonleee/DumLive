//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by apple on 2023/06/08.
//

import Foundation

struct DailyScrum: Identifiable {
    
    let id: UUID //hashable protocol 채택
    
    let title: String
    let attendees: [String]
    let lengthInMinutes: Int
    let theme: Theme
    
    //id: UUID = UUID()를 넣기 위해

    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .blue),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .red)
    ]
    
}
