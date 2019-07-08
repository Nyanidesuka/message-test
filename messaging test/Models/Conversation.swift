//
//  Conversation.swift
//  messaging test
//
//  Created by Haley Jones on 7/8/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

import Foundation

class Conversation{
    var messages: [Message]
    init(messages: [Message]){
        self.messages = messages
    }
    
    convenience init?(firestoreDocument data: [String : Any]){
        var messages: [Message] = []
        guard let dictArray = data["messages"] as? [[String : Any]] else {return nil}
        for dict in dictArray{
            if let loadedMessage = Message(firestoreDocument: dict){
                messages.append(loadedMessage)
            }
        }
        self.init(messages: messages)
    }
}
