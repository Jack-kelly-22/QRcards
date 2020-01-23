//
//  MasterContact.swift
//  QRcards
//
//  Created by jack Kelly on 1/22/20.
//  Copyright © 2020 jack Kelly. All rights reserved.
//

import Foundation
import SwiftUI
import Contacts
class MasterContact: CNMutableContact  {
    //var firstName : String = ""
    //var lastName : String = ""
   //var email : String = ""
    //var url : String = ""
    //var middleName : String = ""
    //var snapchat : String = ""
    //var twitter: String = ""
    var instagram : String = ""
    //var vcfConv: Data
    //var non:CNContact
    init(First:String,Last:String,phoneNumber:String){
        print("heyyy")

        super.init()
        self.familyName=Last
        self.givenName=First
        self.middleName=""
        self.note="note"
        let x = CNPhoneNumber.init(stringValue: phoneNumber)
        
        let label = CNLabeledValue<CNPhoneNumber>.init(label: "main", value: x)
        self.phoneNumbers = [label]
        do {
          let newContactRequest = CNSaveRequest()
            
            newContactRequest.add(self, toContainerWithIdentifier: nil)
            try CNContactStore().execute(newContactRequest)
          // ... if control flow gets here, save operation succeed.
            print("yay")
        } catch {
          // ... deal with error
            print("bruh")
        }
        let tempStore = CNContactStore()
    
        //vcfConv = CNContactVCardSerialization.data(with: [MasterContact as CNContact])
        //print(vcfConv)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
