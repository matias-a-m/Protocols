//: [Previous](@previous)

import Foundation

// MARK: - Camera Management Protocol

/// Protocolo para la gestión de la cámara.
protocol CameraManager {
    /// Captura una foto.
    ///
    /// - Returns: Mensaje indicando que la foto fue capturada.
    func capturePhoto() -> String
    
    /// Graba un video.
    ///
    /// - Returns: Mensaje indicando que el video está siendo grabado.
    func recordVideo() -> String
}

// MARK: - Front Camera Management

/// Implementación para la cámara frontal.
struct FrontCameraManager: CameraManager {
    func capturePhoto() -> String {
        return "Foto capturada con la cámara frontal."
    }
    
    func recordVideo() -> String {
        return "Grabación de video con la cámara frontal."
    }
}

// MARK: - Rear Camera Management

/// Implementación para la cámara trasera.
struct RearCameraManager: CameraManager {
    func capturePhoto() -> String {
        return "Foto capturada con la cámara trasera."
    }
    
    func recordVideo() -> String {
        return "Grabación de video con la cámara trasera."
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var frontCameraManager = FrontCameraManager()
print(frontCameraManager.capturePhoto())
print(frontCameraManager.recordVideo())

var rearCameraManager = RearCameraManager()
print(rearCameraManager.capturePhoto())
print(rearCameraManager.recordVideo())

//: [Next](@next)
