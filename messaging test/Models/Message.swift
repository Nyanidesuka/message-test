//
//  Message.swift
//  messaging test
//
//  Created by Haley Jones on 7/8/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

import Foundation

class Message{
    
    var text: String
    var username: String
    var timestamp: Date
    
    init(text: String, username: String, timestamp: Date = Date()){
        self.text = text
        self.username = username
        self.timestamp = timestamp
    }
    
    convenience init?(firestoreDocument data: [String : Any]){
        guard let text = data["text"] as? String,
        let username = data["username"] as? String,
            let timestamp = data["timestamp"] as? Date else {return nil}
        self.init(text: text, username: username, timestamp: timestamp)
    }
    
}
