//
//  DuvidaRowView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 25/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct HelpRowView: View {
    var text: String
    
    var body: some View {
        Button(action: {
            print("selected")
        }, label: {
            VStack {
                HStack {
                    Text(text).font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.3620989025, green: 0.5201690197, blue: 0.6090552211, alpha: 1)))
                        .padding(.trailing, 8)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(Color(#colorLiteral(red: 0.4413182735, green: 0.5988099575, blue: 0.6833945513, alpha: 1)))
                    }
                }
                .frame(height: 90)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
                Divider()
            }
            .background(Color("ajudaBackground"))
        })
    }
}

struct HelpRowView_Previews: PreviewProvider {
    static var previews: some View {
        HelpRowView(text: "Teste")
    }
}
