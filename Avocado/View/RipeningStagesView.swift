//
//  RipeningStagesView.swift
//  Avocado
//
//  Created by Harry Lopez on 3/05/22.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTY
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningData) { item in
                        RipeningView(ripening: item)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        })// SCROLLVIEW
    }
}
// MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
