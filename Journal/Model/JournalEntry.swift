//
//  JournalEntry.swift
//  Journal
//
//  Created by Nureddin Elmas on 2021-11-25.
//

import Foundation

struct JournalEntry {
    var content : String
    private var unformatedDate : Date
    private var dataformatter = DateFormatter()
    
    
    var date : String {
        return dataformatter.string(from: unformatedDate)
    }
    
    
    init(content : String){
        self.content = content
        self.unformatedDate = Date()
        dataformatter.dateFormat = "yyyy-MM-dd hh:mm"
        
    }
}

