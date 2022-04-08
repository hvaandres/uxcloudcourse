//
//  PreferencesKeys.swift
//  uxcloudcourse
//
//  Created by Andres Haro on 4/8/22.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
