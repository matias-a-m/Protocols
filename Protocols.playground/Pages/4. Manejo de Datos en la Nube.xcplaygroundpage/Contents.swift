//: [Previous](@previous)

import Foundation

// MARK: - Cloud Data Management Protocol

/// Protocolo para el manejo de datos en la nube.
protocol CloudDataManager {
    /// Recupera datos desde la nube para un recurso específico.
    ///
    /// - Parameter resource: Recurso para el cual se deben recuperar los datos.
    /// - Returns: Datos recuperados desde la nube.
    func fetchDataFromCloud(resource: String) -> String
    
    /// Guarda datos en la nube para un recurso específico.
    ///
    /// - Parameters:
    ///   - resource: Recurso para el cual se deben guardar los datos.
    ///   - data: Datos a ser guardados.
    func saveDataToCloud(resource: String, data: String)
}

// MARK: - Firebase Data Management

/// Implementación utilizando Firebase.
struct FirebaseDataManager: CloudDataManager {
    func fetchDataFromCloud(resource: String) -> String {
        print("Recuperando datos de Firebase para el recurso '\(resource)'.")
        return "Datos recuperados desde Firebase."
    }
    
    func saveDataToCloud(resource: String, data: String) {
        print("Guardando datos en Firebase para el recurso '\(resource)':\n\(data)")
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var firebaseDataManager = FirebaseDataManager()
print(firebaseDataManager.fetchDataFromCloud(resource: "userProfile"))
firebaseDataManager.saveDataToCloud(resource: "userProfile", data: "Nombre: John, Edad: 30")


//: [Next](@next)
