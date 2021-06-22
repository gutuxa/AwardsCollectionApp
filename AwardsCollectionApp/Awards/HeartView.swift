//
//  HeartView.swift
//  AwardsCollectionApp
//
//  Created by Oksana Tugusheva on 19.06.2021.
//

import SwiftUI

struct HeartView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let side = min(width, height)
            let middleX = geometry.size.width / 2
            let verticalMargin = side * 0.1
            let horizontalOffset = side * 0.2
            let radius = side / 4
            let offsetDegree = Double(acos(horizontalOffset / radius) * 180 / .pi)
            let startPoint = CGPoint(x: middleX, y: radius)
            
            ZStack {
                Path { path in
                    path.move(to: startPoint)
                    
                    path.addArc(
                        center: CGPoint(x: middleX + horizontalOffset, y: radius + verticalMargin),
                        radius: radius,
                        startAngle: .degrees(-180 + offsetDegree),
                        endAngle: .degrees(20),
                        clockwise: false
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(x: middleX, y: side - verticalMargin),
                        control: CGPoint(x: middleX + side * 0.37, y: side * 0.65)
                    )
                    
                    path.move(to: startPoint)

                    path.addArc(
                        center: CGPoint(x: middleX - horizontalOffset, y: radius + verticalMargin),
                        radius: radius,
                        startAngle: .degrees(-offsetDegree),
                        endAngle: .degrees(160),
                        clockwise: true
                    )

                    path.addQuadCurve(
                        to: CGPoint(x: middleX, y: side - verticalMargin),
                        control: CGPoint(x: middleX - side * 0.37, y: side * 0.65)
                    )
                }
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .black]),
                        center: UnitPoint(x: 0.65, y: 0.3),
                        startRadius: geometry.size.width * 0.1,
                        endRadius: geometry.size.width * 1.5
                    )
                )
                
                Path { path in
                    path.move(to: CGPoint(x: middleX + horizontalOffset, y: radius * 0.35 + verticalMargin))
                    path.addArc(
                        center: CGPoint(x: middleX + horizontalOffset, y: radius + verticalMargin),
                        radius: radius * 0.65,
                        startAngle: .degrees(-83),
                        endAngle: .degrees(20),
                        clockwise: false
                    )
                }
                .stroke(style: StrokeStyle(
                            lineWidth: geometry.size.width * 0.05,
                            lineCap: .round,
                            lineJoin: .round
                ))
                .foregroundColor(.white)
                .blur(radius: 10)
            }
        }
        .frame(width: width, height: height)
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView(width: 200, height: 200)
    }
}
