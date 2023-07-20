//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by apple on 2023/06/08.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}


//TrailingIconLabelStyle() == TrailingIconLabelStyle.init() == Self()

//extension LabelStyle where Self == TrailingIconLabelStyle {
//    static var trailingIcon: TrailingIconLabelStyle {
//        TrailingIconLabelStyle()
//    }
//}
