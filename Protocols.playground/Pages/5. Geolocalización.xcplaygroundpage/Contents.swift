//: [Previous](@previous)

import Foundation

// MARK: - Location Management Protocol

/// Protocolo para obtener la ubicación del dispositivo.
protocol LocationManager {
    /// Obtiene la ubicación actual del dispositivo.
    ///
    /// - Returns: Coordenadas de latitud y longitud, o nil si la ubicación no está disponible.
    func getCurrentLocation() -> (latitude: Double, longitude: Double)?
}

// MARK: - GPS Location Management

/// Implementación utilizando el GPS del dispositivo.
struct GPSLocationManager: LocationManager {
    func getCurrentLocation() -> (latitude: Double, longitude: Double)? {
        print("Obteniendo ubicación actual a través del GPS.")
        return (37.7749, -122.4194)  // Coordenadas de San Francisco como ejemplo.
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var gpsLocationManager = GPSLocationManager()
if let currentLocation = gpsLocationManager.getCurrentLocation() {
    print("Ubicación actual: Latitud \(currentLocation.latitude), Longitud \(currentLocation.longitude)")
}


//: [Next](@next)
