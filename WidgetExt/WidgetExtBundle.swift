//
//  WidgetExtBundle.swift
//  WidgetExt
//
//  Created by 官泉华 on 2024/12/4.
//

import WidgetKit
import SwiftUI

@main
struct WidgetExtBundle: WidgetBundle {
    var body: some Widget {
        WidgetExt()
        WidgetExtControl()
        WidgetExtLiveActivity()
    }
}
