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
                
                for index in 0..<9 {
                    path.addQuadCurve(
                        to: getPoint(
                            middle: curveMiddle,
                            radius: curveRadius,
                            degree: CGFloat(index * 40 + 30)
                        ),
                        control: getPoint(
                            middle: curveMiddle,
                            radius: curveOutRadius,
                            degree: CGFloat(index * 40 + 20)
                        )
                    )
                    path.addQuadCurve(
                        to: getPoint(
                            middle: curveMiddle,
                            radius: curveRadius,
                            degree: CGFloat(index * 40 + 50)
                        ),
                        control: getPoint(
                            middle: curveMiddle,
                            radius: curveInRadius,
                            degree: CGFloat(index * 40 + 40)
                        )
                    )
                }
                
                path.closeSubpath()
            }
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middleX * 1.3, y: middleY))
                    path.addLine(to: CGPoint(x: middleX * 1.3, y: middleY * 1.8))
                    path.addLine(to: CGPoint(x: middleX, y: middleY * 1.65))
                    path.addLine(to: CGPoint(x: middleX * 0.7, y: middleY * 1.8))
                    path.addLine(to: CGPoint(x: middleX * 0.7, y: middleY))
                }
                .fill(Color.yellow)
                
                curve.fill(Color.white).scaleEffect(1.25)
                curve.fill(Color.yellow)
                
                Circle()
                    .stroke(lineWidth: 10)
                    .foregroundColor(.white)
                    .frame(width: curveRadius * 1.2, height: curveRadius * 1.2)
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
