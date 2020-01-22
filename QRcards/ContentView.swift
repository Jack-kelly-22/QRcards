//
//  ContentView.swift
//  QRcards
//
//  Created by jack Kelly on 1/21/20.
//  Copyright © 2020 jack Kelly. All rights reserved.
//

import SwiftUI



struct RoundedButton : View {
    var body: some View {
        Button(action: {}) {
            Text("Save data")
        }
    }
}

struct ContentView : View {
    @State var first_name: String = ""
    @State var last_name: String = ""
    @State var middle_name: String = ""
    @State var title: String = ""
    @State var website: String = ""
    @State var snapchat: String = ""
    @State var twitter: String = ""
    @State var instagram: String = ""
    @State var address: String = ""
    @State var company: String = ""
    @State var email: String = ""
    
    
    var body: some View {

            
 
        VStack{
            TextField("First Name", text: $first_name)

            //RoundedButton().padding(.top, 20)
        }
        .padding(.top, 20)
        .listRowInsets(EdgeInsets())
            

 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
