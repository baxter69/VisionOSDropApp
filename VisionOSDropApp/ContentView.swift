//
//  ContentView.swift
//  VisionOSDropApp
//
//  Created by Владимир on 11.01.2026.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var droppedModels: [URL] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 20) {
                    ForEach(droppedModels, id: \.self) { url in
                        Model3D(url: url)
                            .frame(width: 200, height: 200)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.white.opacity(0.3), lineWidth: 1)
                            )
                    }
                }
                .padding()
            }
            .navigationTitle("3D Объекты")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Добавить USDZ") {
                        print("Перетащите файл .usdz в окно")
                    }
                }
            }
            .dropDestination(for: URL.self) { items, _ in
                // Фильтруем только .usdz и .usda
                let validExtensions = ["usdz", "usda"]
                let newModels = items.filter { url in
                    let ext = url.pathExtension.lowercased()
                    return validExtensions.contains(ext)
                }
                droppedModels.append(contentsOf: newModels)
                return !newModels.isEmpty
            }
        }
    }
}
