//
//  ContentView.swift
//  IRPF
//
//  Created by Raphael Cerqueira on 23/07/20.
//  Copyright © 2020 RPHLFC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var showMenu = false
    
    var body: some View {
        let drag = DragGesture()
            .onEnded { (value) in
                if value.translation.width < -100 {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }
        }
        
        let preferences = UserDefaults.standard
        var theme = preferences.string(forKey: "userTheme")
        if theme == nil {
            print(colorScheme == .light ? "light" : "dark")
            theme = colorScheme == .light ? "light" : "dark"
        }
        preferences.set(theme, forKey: "userTheme")
        SceneDelegate.shared?.changeTheme(themeVal: theme!)
        
        return VStack {
            VStack {
                HStack {
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 30, height: 20)
                            .foregroundColor(Color(#colorLiteral(red: 0.5868791938, green: 0.6676102877, blue: 0.7490347028, alpha: 1)))
                    }
                    
                    Spacer()
                    
                    Image("logo-receita")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.486296773, blue: 0.99823457, alpha: 1)))
                    
                    Spacer()
                    
                    ProfileImageView()
                }
            }
            .padding(.leading, 24)
            .padding(.trailing, 24)
            .padding(.top, 40)
            .background(Color("navigationBackground"))
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width / 2 : 0)
                        .disabled(self.showMenu ? true : false)
                    
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width / 2)
                            .animation(.spring())
                    }
                }
                .gesture(drag)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color("navigationBackground"))
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        ZStack {
            Color("mainBackground").edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    WelcomeView()
                    
                    VStack {
                        NovaDeclaracaoButton().padding(.top, 24)
                        
                        // Declarações
                        DeclaracoesView().padding(.top, 24)
                        
                        // Últimas declarações
                        UltimasDeclaracoesView().padding(.top, 24)
                        
                        // Tributações
                        TributacoesView().padding(.top, 24)
                    }
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
