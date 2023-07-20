//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Lee Juwon on 2023/06/08.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(scrum.theme.mainColor)
            VStack {
                ProgressView(value: 5, total: 15)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Seconds Elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.tophalf.fill")
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing){
                        Text("Seconds Remaing")
                            .font(.caption)
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                    
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time Remaining")
                .accessibilityValue("10 minutes")
                
                Circle()
                    .strokeBorder(lineWidth: 24)
                
                HStack{
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next Speaker")
                }
            }
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}