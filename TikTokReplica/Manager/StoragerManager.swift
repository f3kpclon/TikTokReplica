//
//  StoragerManager.swift
//  TikTokReplica
//
//  Created by Felix Alexander Sotelo Quezada on 23-07-21.
//

import Foundation
import FirebaseStorage

final class StorageManager  {
    
    public static let shared = StorageManager()
    
    private let storage = Storage.storage().reference()
    
    private init () {}
    
    public func getVideoURL(with identifier: String, completion: (URL) -> Void)  {
        
    }
    
    public func uploadVideoURL(from url: URL)  {
        
    }
}
