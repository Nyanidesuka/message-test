//
//  FirebaseReferenceManager.swift
//  messaging test
//
//  Created by Haley Jones on 7/8/19.
//  Copyright © 2019 HaleyJones. All rights reserved.
//

import Foundation
import Firebase

//This thing here just stores a bunch of constants that have references to things we need to use firestore
struct FirebaseReferenceManager {
    //the name of our collection in our database
    static let environment = "Message Test"
    static let database = Firestore.firestore()
    static let root = database.collection(environment).document(environment)
}
