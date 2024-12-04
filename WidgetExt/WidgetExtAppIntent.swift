//
//  WidgetExtAppIntent.swift
//  WidgetExtExtension
//
//  Created by 官泉华 on 2024/12/4.
//

import Foundation
import AppIntents

struct WidgetExtAppIntent: AppIntent {
    
    static var count: Int {
        get {
            UserDefaults.standard.integer(forKey: "WidgetExtAppIntent.count")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "WidgetExtAppIntent.count")
        }
    }
    
    static var title: LocalizedStringResource = "My Demo Intent"
    static var description = IntentDescription("This is a Demo")

    @Parameter(title: "action")
    var action: String?
    
    init() {}
    
    init(action: String? = nil) {
        self.action = action
    }
    
    func perform() async throws -> some IntentResult {
        Self.count += 1
        
        return .result()
    }
    
}
