//
//  ProgressBar.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @State var completed: Bool
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width, height: 10)
                    .opacity(0.3)
                    .foregroundColor(Color(#colorLiteral(red: 0.8127779365, green: 0.8999093175, blue: 0.9464372993, alpha: 1)))
                
                Rectangle().frame(width: self.completed ? geometry.size.width : 120, height: 10)
                    .foregroundColor(self.completed ? Color(#colorLiteral(red: 0.984942019, green: 0.7078405023, blue: 0.02046716958, alpha: 1)) : Color(UIColor.systemBlue))
            }
            .cornerRadius(5)
        }
        .padding(.top, 12)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(completed: true)
    }
}
