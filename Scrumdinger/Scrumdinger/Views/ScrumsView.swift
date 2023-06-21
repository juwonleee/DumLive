//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by jisukwon on 2023/06/13.
//

import SwiftUI

struct ScrumsView: View {
    
    let scrums : [DailyScrum]
    //바디 안에 넣게 되면 바디 스코프 안에서만 쓸 수 있다.
    
    var body: some View {
        
        List(scrums) { scrum in
            CardView(dailyScrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }

        
        
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
