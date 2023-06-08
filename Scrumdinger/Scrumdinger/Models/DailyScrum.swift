//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by apple on 2023/06/08.
//

import Foundation

struct DailyScrum {
    let title: String
    let attendees: [String]
    let lengthInMinutes: Int
    let theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .blue),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .red)
    ]
}
