//
//  AuthManager.swift
//  TikTokReplica
//
//  Created by Felix Alexander Sotelo Quezada on 23-07-21.
//

import Foundation
import FirebaseAuth

final class AuthManager {
    public static let shared = AuthManager()
    enum SignInMethod {
        case email
        case facebook
        case google
    }
    
    public func signIn(with method: SignInMethod) {
        
    }
    public func signOut() {
        
    }
    
}
