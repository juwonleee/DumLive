//
//  CardView.swift
//  Scrumdinger
//
//  Created by apple on 2023/06/08.
//

import SwiftUI

struct CardView: View {
    let dailyScrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(dailyScrum.title)")
                .font(.headline)
                .accessibilityAddTraits(.isSelected)
            Spacer()
            HStack {
                Label("\(dailyScrum.attendees.count)", systemImage: "person.3")
                    .font(.caption)
                    .accessibilityLabel("\(dailyScrum.attendees.count) attendees")
                Spacer()
                Label("\(dailyScrum.lengthInMinutes)", systemImage: "clock")
                    .font(.caption)
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(dailyScrum.lengthInMinutes)  minute meeting")
            }
        }
        .foregroundColor(dailyScrum.theme.accentColor)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static let data: DailyScrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(dailyScrum: data)
            .background(data.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
