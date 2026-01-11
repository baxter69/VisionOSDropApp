//
//  VisionOSDropAppApp.swift
//  VisionOSDropApp
//
//  Created by user on 11.01.2026.
//

import SwiftUI

@main
struct VisionOSDropApp: App {
    var body: some Scene {
        // Первое окно: основное приложение
        WindowGroup("Мои 3D-модели") {
            ContentView()
        }
        
        // Второе окно: справочное или дополнительное
        WindowGroup("Инструкция") {
            InstructionView()
        }
    }
}
