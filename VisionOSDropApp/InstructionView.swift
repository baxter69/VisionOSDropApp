//
//  InstructionView.swift
//  VisionOSDropApp
//
//  Created by Владимир on 11.01.2026.
//

import SwiftUI

struct InstructionView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Как использовать")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("1. Перетащите файлы .usdz или .usda из Finder в окно приложения.")
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("2. Модели появятся в сетке.")
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("3. Вы можете открыть несколько окон одновременно!")
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Помощь")
    }
}
