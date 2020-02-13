//
//  EnjiatoKeyboardListener.swift
//  EnjiatoCore
//
//  Created by Jurek Herwig on 10.02.20.
//  Copyright © 2020 Enjiato. All rights reserved.
//

import SwiftUI

public class EnjiatoKeyboardListener: ObservableObject {
    @Published public var isKeyboardShown = false
    @Published public var keyboardHeight: CGFloat = 0

    public init() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @objc private func keyboardWillShow(notification: NSNotification) {
        guard
            let userInfo = notification.userInfo,
            let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue,
            let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval,
            let curve = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else { return }

        withAnimation(.easeInOut(duration: duration)) { //TODO right animation
            keyboardHeight = keyboardFrame.cgRectValue.height
            isKeyboardShown = true
        }
    }

    @objc private func keyboardWillHide(notification: NSNotification) {
        guard
            let userInfo = notification.userInfo,
            let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval,
            let curve = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? UInt else { return }

        withAnimation(.easeInOut(duration: duration)) { //TODO right animation
            keyboardHeight = 0
            isKeyboardShown = false
        }
    }
}
