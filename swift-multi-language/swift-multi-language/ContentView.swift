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
        VStack {
            // days of week
            VStack {
                Text("Days of Week")
                    .bold()
                    .font(Font.system(size: 22))
                Text("\(languageList[selectedLanguage].name)")
            }.padding(.top, 50)
            
            Spacer()
            
            // language picker
            VStack {
                Text("Select Language")
                    .bold()
                    .font(Font.system(size: 22))
                Picker(selection: $selectedLanguage, label: Text("Select Language")) {
                    ForEach(0 ..< languageList.count) {
                        PickerItem(
                            flag: self.languageList[$0].flag,
                            name: self.languageList[$0].name
                        )
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


private struct PickerItem: View {
    let flag: String
    let name: String
    var body: some View {
        HStack(alignment: .center) {
            Image(flag)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .leading)
                .padding(.leading, 50)
            Spacer()
            Text(name)
                .padding(.trailing, 60)
        }
    }
}
