//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Hagar on 25/05/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    var text: String
    var answer: Bool
    
    init(q: String, a: Bool) {
        self.text = q
        self.answer = a
    }
}
