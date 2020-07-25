//
//  UltimasDeclaracoesView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct TiposDeclaracaoView: View {
    var body: some View {
        HStack {
            TipoDeclaracaoHalfView(imageName: "image2", topLine: "Declaração final", bottomLine: "de espólio")
                .padding(.trailing, 8)
                .shadow(color: Color("shadow"), radius: 10)
            
            Spacer()
            
            TipoDeclaracaoHalfView(imageName: "image3", topLine: "Declaração de", bottomLine: "saída do país")
                .padding(.leading, 8)
                .shadow(color: Color("shadow"), radius: 10)
        }
        .frame(maxWidth: .infinity)
    }
}

struct TipoDeclaracaoHalfView: View {
    var imageName: String
    var topLine: String
    var bottomLine: String
    
    var body: some View {
        VStack {
            Image(self.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .padding(.bottom, -8)
            
            Divider()
            
            HStack {
                VStack (alignment: .leading) {
                    Text(topLine)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color(#colorLiteral(red: 0.4413182735, green: 0.5988099575, blue: 0.6833945513, alpha: 1)))
                    
                    Text(bottomLine)
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.3200935721, green: 0.5206329226, blue: 0.6262764335, alpha: 1)))
                }
                .padding(.leading, 16)
                
                Spacer()
                
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("+")
                            .font(.system(size: 16, weight: .semibold))
                    }
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
                    .padding(.top, 4)
                    .padding(.bottom, 4)
                    .foregroundColor(Color("cardButtonForeground"))
                    .background(Color("cardButtonBackground"))
                    .cornerRadius(8)
                }
                .padding(.trailing, 16)
            }
            .padding(.top, 16)
            .padding(.bottom, 16)
        }
        .background(Color("cardBackground"))
        .cornerRadius(20)
    }
}

struct TiposDeclaracaoView_Previews: PreviewProvider {
    static var previews: some View {
        TiposDeclaracaoView()
    }
}
