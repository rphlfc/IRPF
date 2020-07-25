//
//  AjudaView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 25/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct HelpView: View {
    let titles = [
        "Quem precisa declarar",
        "Dependentes: quem pode ser incluído na sua declaração",
        "Tipos de declaração",
        "Documentos",
        "Cálculo do IR",
        "O que pode ser deduzido",
        "O que acontece com quem cai na malha fina",
        "Até que dia posso finalizar meu IR",
        "Foi demitido em 2019?\nPegue informe na antiga empresa"
    ]
    
    
    var body: some View {
        ScrollView {
            VStack {
                TitleAndSubtitleView(title: "Principais Dúvidas")
                    .padding(.top, 64)
                
                ForEach(self.titles, id: \.self) { title in
                    DuvidaRowView(text: title)
                }
                
                NeedHelpView()
                    .padding(.top, 24)
                
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .padding(.bottom, 16)
            .background(Color("ajudaBackground"))
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct AjudaView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HelpView().environment(\.colorScheme, .light)
            
            HelpView().environment(\.colorScheme, .dark)
        }
    }
}
