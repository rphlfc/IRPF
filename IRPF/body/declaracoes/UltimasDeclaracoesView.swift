//
//  UltimasDeclaracoesView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct UltimasDeclaracoesView: View {
    var body: some View {
        VStack {
            TitleAndSubtitleView(title: "Últimas declarações")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    DeclaracaoView(completed: false)
                    
                    DeclaracaoView(completed: true)
                }
            }
        }
        .padding(.top, 24)
    }
}

struct DeclaracaoView: View {
    @State var completed: Bool
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("12 de Maio de 2020")
                    .font(.system(size: 12))
                    .foregroundColor(Color(#colorLiteral(red: 0.6254543662, green: 0.7510463595, blue: 0.8404650688, alpha: 1)))
                    .padding(.top, 16)
                
                Text("Declaração de ajuste anual")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(self.completed ? Color.white : Color(#colorLiteral(red: 0.2930242717, green: 0.5050035119, blue: 0.6148317456, alpha: 1)))
                
                ProgressBar(completed: self.completed)
                
                Text(self.completed ? "Declaração finalizada" : "Ainda faltam 2 de 12 etapas para finalizar")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(self.completed ? Color.white : Color(#colorLiteral(red: 0.2930242717, green: 0.5050035119, blue: 0.6148317456, alpha: 1)))
            }
            .padding(.bottom, 24)
            .padding(.leading, 24)
            
            VStack {
                if self.completed {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.green)
                } else {
                    Text("2/12").font(.system(size: 18))
                        .foregroundColor(Color(#colorLiteral(red: 0.6254543662, green: 0.7510463595, blue: 0.8404650688, alpha: 1)))
                }
                
                Spacer()
                
                HStack {
                    
                    if self.completed {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "doc.on.doc")
                        }
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        .padding(.top, 16)
                        .padding(.bottom, 16)
                        .foregroundColor(Color(#colorLiteral(red: 0.3838093579, green: 0.567768693, blue: 0.6606589556, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9295499325, green: 0.953376472, blue: 0.9747241139, alpha: 1)))
                        .cornerRadius(10)
                        .disabled(self.completed ? true : false)
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "arrow.right")
                    }
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .padding(.top, 16)
                    .padding(.bottom, 16)
                    .foregroundColor(Color(#colorLiteral(red: 0.3838093579, green: 0.567768693, blue: 0.6606589556, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9295499325, green: 0.953376472, blue: 0.9747241139, alpha: 1)))
                    .cornerRadius(10)
                    .disabled(self.completed ? true : false)
                }
            }
            .padding(.trailing, 16)
            .padding(.bottom, 16)
        }
        .padding(.top, 16)
        .background(self.completed ? Color.selectedBackgroundColor : Color.notSelectedBackgroundColor)
        .cornerRadius(15)
        .shadow(color: .shadowColor, radius: 10)
        
    }
}

struct UltimasDeclaracoesView_Previews: PreviewProvider {
    static var previews: some View {
        UltimasDeclaracoesView()
    }
}
