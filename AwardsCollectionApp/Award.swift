//
//  Award.swift
//  AwardsCollectionApp
//
//  Created by Oksana Tugusheva on 22.06.2021.
//

import SwiftUI

struct Award {
    let view: AnyView
    let title: String
    let active: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                view: AnyView(GradientRectangles(width: 160, height: 160)),
                title: "Gradient Rectangles",
                active: true
            ),
            Award(
                view: AnyView(PathView(width: 160, height: 160)),
                title: "Path View",
                active: true
            ),
            Award(
                view: AnyView(CurvesView(width: 160, height: 160)),
                title: "Curves View",
                active: false
            ),
            Award(
                view: AnyView(HeartView(width: 160, height: 160)),
                title: "Heart View",
                active: true
            ),
            Award(
                view: AnyView(MedalView(width: 160, height: 160)),
                title: "Medal View",
                active: true
            )
        ]
    }
}
