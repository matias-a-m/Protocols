//: [Previous](@previous)

import Foundation

// MARK: - Sensor Integration Protocol

/// Protocolo para la integración de sensores en el dispositivo.
protocol SensorIntegration {
    /// Lee datos del sensor.
    ///
    /// - Returns: Datos leídos del sensor.
    func readSensorData() -> String
    
    /// Calibra el sensor.
    func calibrateSensor()
}

// MARK: - Temperature Sensor

/// Implementación para la integración del sensor de temperatura.
struct TemperatureSensor: SensorIntegration {
    func readSensorData() -> String {
        return "Leyendo datos del sensor de temperatura."
    }
    
    func calibrateSensor() {
        print("Calibrando el sensor de temperatura.")
    }
}

// MARK: - Accelerometer Sensor

/// Implementación para la integración del sensor de aceleración.
struct AccelerometerSensor: SensorIntegration {
    func readSensorData() -> String {
        return "Leyendo datos del sensor de aceleración."
    }
    
    func calibrateSensor() {
        print("Calibrando el sensor de aceleración.")
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var temperatureSensor = TemperatureSensor()
print(temperatureSensor.readSensorData())
temperatureSensor.calibrateSensor()

var accelerometerSensor = AccelerometerSensor()
print(accelerometerSensor.readSensorData())
accelerometerSensor.calibrateSensor()



//: [Next](@next)
