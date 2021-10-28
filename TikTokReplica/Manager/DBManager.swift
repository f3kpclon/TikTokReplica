//
//  DBManager.swift
//  TikTokReplica
//
//  Created by Felix Alexander Sotelo Quezada on 23-07-21.
//

import Foundation
import FirebaseDatabase

final class DbManager {
    
    public static let shared = DbManager()
    
    private let database = Database.database().reference()
    
    private init () {}
    
    // public
    public func getAllUsers(completion: ([String]) -> Void)  {

    }
    
}
