//
//  TitleAndSubtitleViewq.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct TitleAndSubtitleView: View {
    var title: String
    var subtitle: String? = nil
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 24, weight: .heavy, design: .default))
                Spacer()
            }
            
            if subtitle != nil {
                HStack {
                    Text(subtitle ?? "")
                        .font(.system(size: 12, weight: .semibold, design: .default))
                        .foregroundColor(Color(#colorLiteral(red: 0.5087090731, green: 0.6654613614, blue: 0.7544001937, alpha: 1)))
                    Spacer()
                }
                .padding(.top, 8)
            }
        }
    }
}

struct TitleAndSubtitleViewq_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleAndSubtitleView(title: "Title")
            TitleAndSubtitleView(title: "Title", subtitle: "Subtitle")
        }
    }
}
