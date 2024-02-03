//: [Previous](@previous)
import Foundation

// MARK: - File Handling Protocol

/// Protocolo para el manejo de archivos.
protocol FileHandler {
    /// Lee el contenido desde un archivo.
    ///
    /// - Parameter fileName: Nombre del archivo.
    /// - Returns: Contenido leído desde el archivo, o nil si hay un error.
    func readFromFile(fileName: String) -> String?
    
    /// Escribe contenido en un archivo.
    ///
    /// - Parameters:
    ///   - fileName: Nombre del archivo.
    ///   - content: Contenido a escribir en el archivo.
    func writeToFile(fileName: String, content: String)
}

// MARK: - Local File Handling

/// Implementación para manejar archivos localmente.
struct LocalFileHandler: FileHandler {
    func readFromFile(fileName: String) -> String? {
        print("Leyendo desde el archivo local '\(fileName)'.")
        return "Contenido leído desde el archivo local."
    }
    
    func writeToFile(fileName: String, content: String) {
        print("Escribiendo en el archivo local '\(fileName)':\n\(content)")
    }
}

// MARK: - Cloud File Handling

/// Implementación para manejar archivos en la nube.
struct CloudFileHandler: FileHandler {
    func readFromFile(fileName: String) -> String? {
        print("Descargando contenido desde la nube para el archivo '\(fileName)'.")
        return "Contenido descargado desde la nube."
    }
    
    func writeToFile(fileName: String, content: String) {
        print("Subiendo contenido a la nube para el archivo '\(fileName)':\n\(content)")
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var localFileHandler = LocalFileHandler()
localFileHandler.writeToFile(fileName: "localFile.txt", content: "Hola, este es un archivo local.")

var cloudFileHandler = CloudFileHandler()
cloudFileHandler.readFromFile(fileName: "cloudFile.txt")
cloudFileHandler.writeToFile(fileName: "cloudFile.txt", content: "Hola, este es un archivo en la nube.")


//: [Next](@next)
