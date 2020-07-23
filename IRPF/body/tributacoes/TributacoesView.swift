//
//  TributacoesView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct TributacoesView: View {
    var body: some View {
        VStack {
            TitleAndSubtitleView(title: "Tributações")
            
            HStack {
                TributacaoView(selected: true, valor: "3.193,73")
                    .padding(.trailing, 8)
                    .shadow(color: .shadowColor, radius: 10)
                
                Spacer()
                
                TributacaoView(selected: false, valor: "5.486,30")
                    .padding(.leading, 8)
                    .shadow(color: .shadowColor, radius: 10)
            }
        }
    }
}

struct TributacaoView: View {
    @State var selected = false
    var valor: String
    
    var body: some View {
        HStack {
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: self.selected ? "circle.fill" : "circle")
                        .foregroundColor(self.selected ? Color.green : Color(#colorLiteral(red: 0.9295499325, green: 0.953376472, blue: 0.9747241139, alpha: 1)))
                }
                .padding(.leading, 2)
                .padding(.trailing, 2)
                .padding(.top, 4)
                .padding(.bottom, 4)
                .foregroundColor(Color(#colorLiteral(red: 0.3838093579, green: 0.567768693, blue: 0.6606589556, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.9295499325, green: 0.953376472, blue: 0.9747241139, alpha: 1)))
                .cornerRadius(16)
                
                Text("Por deduções legais")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(self.selected ? .tributacoesSelectedTitleColor : .tributacoesTitleColor)
                    .padding()
                
                Divider()
                
                Text("Impostos a pagar")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.5626798868, green: 0.760737896, blue: 0.844788909, alpha: 1)))
                    .padding(.top, 16)
                
                Text(valor)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(self.selected ? .tributacoesValorSelectedColor : .tributacoesValorColor)
                    .padding(.bottom, 20)
            }
            .padding(.top, 16)
            .background(self.selected ? Color(#colorLiteral(red: 0, green: 0.4820923209, blue: 0.9983687997, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(15)
        }
        .onTapGesture {
            self.selected.toggle()
        }
    }
}

struct TributacoesView_Previews: PreviewProvider {
    static var previews: some View {
        TributacoesView()
    }
}
