//
//  HorseViewRepresentable.swift
//  TestApp
//
//  Created by owel on 10/10/2024.
//

import SwiftUI
import SeparateTestBundle

struct HorseViewRepresentable: UIViewRepresentable {
    func updateUIView(_ uiView: SeparateTestBundle.HorseView, context: Context) {
    }
    
    func makeUIView(context: Context) -> HorseView {
        let horseView = HorseView.createFromXib()
        return horseView ?? HorseView()
    }
}

#Preview {
    HorseViewRepresentable()
}
