//: [Previous](@previous)

import Foundation

// MARK: - Notification Handling Protocol

/// Protocolo para el manejo de notificaciones.
protocol NotificationHandler {
    /// Muestra una notificación con el mensaje proporcionado.
    ///
    /// - Parameter message: Mensaje de la notificación.
    func showNotification(message: String)
}

// MARK: - Local Notification Handling

/// Implementación para notificaciones locales.
struct LocalNotificationManager: NotificationHandler {
    func showNotification(message: String) {
        print("Mostrando notificación local: '\(message)'.")
    }
}

// MARK: - Push Notification Handling

/// Implementación para notificaciones push.
struct PushNotificationManager: NotificationHandler {
    func showNotification(message: String) {
        print("Enviando notificación push: '\(message)'.")
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var localNotificationManager = LocalNotificationManager()
localNotificationManager.showNotification(message: "¡Tienes una nueva tarea!")

var pushNotificationManager = PushNotificationManager()
pushNotificationManager.showNotification(message: "Actualización de la aplicación disponible.")


//: [Next](@next)
