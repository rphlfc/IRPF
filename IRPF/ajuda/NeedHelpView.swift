//
//  NeedHelpView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 25/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct NeedHelpView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Precisa\nde ajuda?")
                    .font(.system(size: 32, weight: .heavy))
                    .foregroundColor(Color.white)
                
                Text("Fale com o Leãozinho,\nele está pronto para te\najudar ;)")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.7922739387, green: 0.846694231, blue: 0.95904392, alpha: 1)))
                    .padding(.top, 16)
                
                Button(action: {
                    
                }) {
                    Text("Diga oi!")
                        .frame(width: 135, height: 50)
                }
                .foregroundColor(Color(#colorLiteral(red: 0.9230855107, green: 0.9409489036, blue: 0.9886431098, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.5123378038, green: 0.7090724111, blue: 0.9871820807, alpha: 1)))
                .cornerRadius(10)
                .padding(.top, 16)
            }
            
            Spacer()
        }
        .padding(.top, 48)
        .padding(.bottom, 32)
        .padding(.leading, 48)
        .frame(maxWidth: .infinity)
        .background(Color(#colorLiteral(red: 0.01883106492, green: 0.4572260976, blue: 0.9867642522, alpha: 1)))
        .cornerRadius(40)
    }
}

struct NeedHelpView_Previews: PreviewProvider {
    static var previews: some View {
        NeedHelpView()
    }
}
