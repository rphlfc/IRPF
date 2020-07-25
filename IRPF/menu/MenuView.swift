//
//  MenuView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    private let itens = [
        MenuItem(imageName: "magnifyingglass.circle", title: "Minhas declarações"),
        MenuItem(imageName: "chart.bar", title: "Rendimentos recebidos de PF"),
        MenuItem(imageName: "printer", title: "Recibos"),
        MenuItem(imageName: "chart.pie", title: "DARF"),
        MenuItem(imageName: "arrow.down.to.line.alt", title: "Importações"),
        MenuItem(imageName: "folder", title: "Fichas"),
        MenuItem(imageName: "gear", title: "Ferramentas"),
        MenuItem(imageName: "heart", title: "Ajuda")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(itens, id: \.self) { item in
                MenuItemView(item: item)
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("navigationBackground"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuItem: Hashable {
    var imageName: String
    var title: String
}

struct MenuItemView: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(systemName: self.item.imageName)
                .foregroundColor(.menuIconColor)
                .imageScale(.large)
            
            Text(self.item.title)
                .foregroundColor(.menuTitleColor)
                .font(.system(size: 16, weight: .bold))
                .padding(.leading, 16)
            
            Spacer()
            
            if item.title.elementsEqual("Recibos") {
                Image(systemName: "chevron.down")
                    .foregroundColor(.menuTitleColor)
                    .padding(.trailing, 16)
                
            }
        }
        .padding(.top, 30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MenuView()
                .environment(\.colorScheme, .light)
            
            MenuView()
                .environment(\.colorScheme, .dark)
        }
    }
}
