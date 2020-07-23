//
//  TitleView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text("Que bom ter você por aqui,")
                        .foregroundColor(Color(#colorLiteral(red: 0.5601476431, green: 0.6965487599, blue: 0.7771148682, alpha: 1)))
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                    
                    Text("Evaristo Costa")
                        .foregroundColor(Color(#colorLiteral(red: 0.156845212, green: 0.1568739116, blue: 0.1568388939, alpha: 1)))
                        .font(.system(size: 32, weight: .black))
                }
                .padding(.leading, 24)
                .padding(.bottom, 24)
                
                Spacer()
                
                VStack {
                    Button(action: {
                        print("Dark mode")
                    }) {
                        Image(systemName: "moon.circle.fill")
                            .resizable()
                            .foregroundColor(.darkModeButtonColor)
                    }
                    .frame(width: 30, height: 30)
                    .padding(.trailing, 24)
                }
            }
            .background(Color.welcomeBanckgroundColor)
            .padding(.top, 24)
        }
        .background(Color.welcomeBanckgroundColor)
        .cornerRadius(40, corners: [.bottomRight])
        .shadow(color: .shadowColor, radius: 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
