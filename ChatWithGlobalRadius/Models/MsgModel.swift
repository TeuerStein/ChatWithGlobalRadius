//
//  MsgModel.swift
//  ChatWithGlobalRadius
//
//  Created by ALEXANDR DRAGUNOV on 11/4/20.
//

import SwiftUI
import FirebaseFirestoreSwift

struct MsgModel: Codable, Identifiable, Hashable {
    @DocumentID var id: String?
    var msg: String
    var user: String
    var timeStamp: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case msg
        case user
        case timeStamp
    }
}
