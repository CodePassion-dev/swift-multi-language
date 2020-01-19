//
//  ContentView.swift
//  swift-multi-language
//
//  Created by Huy Duong on 1/13/20.
//  Copyright © 2020 Huy Duong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var languageList = ContainViewModel().loadLanguage()
    @State private var selectedLanguage = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            // days of week
            VStack(alignment: .leading) {
                Text("Days of Week")
                    .bold()
                    .font(Font.system(size: 22))
                Text("\(languageList[selectedLanguage].name)")
            }.padding(.top, 50)
            
            Spacer()
            
            // language picker
            VStack(alignment: .leading) {
                Text("Select Language")
                    .bold()
                    .font(Font.system(size: 22))
                Picker(selection: $selectedLanguage, label: Text("Select Language")) {
                    ForEach(0 ..< languageList.count) {
                        Text(self.languageList[$0].name)
                    }
                }
                .labelsHidden()
                .padding(.bottom, 25)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
