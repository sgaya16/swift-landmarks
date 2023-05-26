//
//  PageView.swift
//  Landmarks2
//
//  Created by Sara Gaya on 5/23/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                    .frame(width: CGFloat(pages.count * 18))
                    .padding(.trailing)
            
//            HStack {
//                Text("Current Page: \(currentPage)")
//                Button {
//                    currentPage = (currentPage >= 2) ? 0 : currentPage+1
//                } label: {
//                    Label("Change page view", systemImage: "arrow.right")
//                        .labelStyle(.iconOnly)
//                }
//            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
            
    }
}
