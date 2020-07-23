//
//  DeclaracaoAjusteAnualView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct DeclaracoesView: View {
    var body: some View {
        VStack {
            TitleAndSubtitleView(title: "Declarações", subtitle: "Selecione abaixo a opção para iniciar a sua declaração")
            
            DeclaracaoAjusteAnualView()
                .padding(.top, 24)
            
            TiposDeclaracaoView()
                .padding(.top, 24)
        }
    }
}

struct DeclaracoesView_Previews: PreviewProvider {
    static var previews: some View {
        DeclaracoesView()
    }
}
