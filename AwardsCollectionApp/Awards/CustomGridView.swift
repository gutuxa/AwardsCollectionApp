//
//  CustomGridView.swift
//  AwardsCollectionApp
//
//  Created by Oksana Tugusheva on 22.06.2021.
//

import SwiftUI

struct CustomGridView<Content: View, T>: View {
    let items: [T]
    let columns: Int
    let content: (CGFloat, T) -> Content
    var rows: Int {
        items.count / columns
    }
    
    var body: some View {
        GeometryReader { geometry in
            let sideSize = geometry.size.width / CGFloat(columns)
            
            ScrollView {
                VStack {
                    ForEach(0...rows, id: \.self) { row in
                        HStack {
                            ForEach(0..<columns) { column in
                                if let index = getIndexFor(column: column, row: row) {
                                    content(sideSize, items[index])
                                } else {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func getIndexFor(column: Int, row: Int) -> Int? {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
}

struct CustomGridView_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridView(items: [2, 4, 12, 4, 5], columns: 2) { sideSize, item in
            Text("\(item)")
                .frame(width: sideSize, height: sideSize)
        }
    }
}
