//
//  MedalView.swift
//  AwardsCollectionApp
//
//  Created by Oksana Tugusheva on 20.06.2021.
//

import SwiftUI

struct MedalView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let middleX = geometry.size.width / 2
            let middleY = geometry.size.height / 2
            let maxRadius = min(middleX, middleY)
            let curveMiddle = CGPoint(
                x: geometry.size.width * 0.5,
                y: geometry.size.height * 0.4)
            let curveRadius = maxRadius * 0.6
            let curveOutRadius = maxRadius * 0.7
            let curveInRadius = maxRadius * 0.5
            
            let curve = Path { path in
                path.move(to: getPoint(
                    middle: curveMiddle,
                    radius: curveRadius,
                    degree: 10
                ))
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 30
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 20
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 50
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 40
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 70
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 60
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 90
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 80
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 110
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 100
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 130
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 120
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 150
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 140
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 170
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 160
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 190
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 180
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 210
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 200
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 230
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 220
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 250
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 240
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 270
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 260
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 290
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 280
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 310
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 300
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 330
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 320
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 350
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveOutRadius,
                        degree: 340
                    )
                )
                path.addQuadCurve(
                    to: getPoint(
                        middle: curveMiddle,
                        radius: curveRadius,
                        degree: 10
                    ),
                    control: getPoint(
                        middle: curveMiddle,
                        radius: curveInRadius,
                        degree: 0
                    )
                )
                
                path.closeSubpath()
            }
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middleX * 1.35, y: middleY))
                    path.addLine(to: CGPoint(x: middleX * 1.35, y: middleY * 1.8))
                    path.addLine(to: CGPoint(x: middleX, y: middleY * 1.65))
                    path.addLine(to: CGPoint(x: middleX * 0.65, y: middleY * 1.8))
                    path.addLine(to: CGPoint(x: middleX * 0.65, y: middleY))
                }
                .fill(Color.yellow)
                
                curve.fill(Color.white).scaleEffect(1.25)
                curve.fill(Color.yellow)
                
                Circle()
                    .stroke(lineWidth: 10)
                    .foregroundColor(.white)
                    .frame(width: curveRadius * 1.15, height: curveRadius * 1.15)
                    .offset(CGSize(width: 0, height: -middleY + curveMiddle.y))
            }
            
        }
        .frame(width: width, height: height)
    }
    
    private func getPoint(middle: CGPoint, radius: CGFloat, degree: CGFloat) -> CGPoint {
        CGPoint(
            x: middle.x + radius * sin(degree / 180 * .pi),
            y: middle.y + radius * cos(degree / 180 * .pi)
        )
    }
}

struct MedalView_Previews: PreviewProvider {
    static var previews: some View {
        MedalView(width: 200, height: 200)
    }
}
