//
//  NovaDeclaracaoButton.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct NovaDeclaracaoButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Text("+")
                    .font(.system(size: 16, weight: .bold))
                    .frame(width: 28, height: 28)
                    .background(Color.buttonIconBackgroundColor)
                    .foregroundColor(.buttonTitleColor)
                    .cornerRadius(14)
                    .padding(.leading, 8)
                Spacer()
                Text("Nova Declaração")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color.buttonTitleColor)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 45)
        .background(Color.buttonBackgroundColor)
        .cornerRadius(22)
        .shadow(color: Color("shadow"), radius: 10)
    }
}

struct NovaDeclaracaoButton_Previews: PreviewProvider {
    static var previews: some View {
        NovaDeclaracaoButton()
    }
}
