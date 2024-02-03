//: [Previous](@previous)

import Foundation

// MARK: - API Integration Protocol

/// Protocolo para la integración con API externa.
protocol APIIntegration {
    /// Recupera datos desde un punto final de la API.
    ///
    /// - Parameter endpoint: Punto final de la API.
    /// - Returns: Datos recuperados desde la API.
    func fetchData(from endpoint: String) -> String
    
    /// Envía datos a un punto final de la API.
    ///
    /// - Parameters:
    ///   - endpoint: Punto final de la API.
    ///   - data: Datos a ser enviados.
    /// - Returns: Mensaje indicando que los datos han sido enviados con éxito.
    func sendData(to endpoint: String, data: String) -> String
}

// MARK: - REST API Management

/// Implementación para la integración con API REST.
struct RESTAPIManager: APIIntegration {
    func fetchData(from endpoint: String) -> String {
        return "Datos recuperados desde la API REST en '\(endpoint)'."
    }
    
    func sendData(to endpoint: String, data: String) -> String {
        return "Datos enviados a la API REST en '\(endpoint)':\n\(data)"
    }
}

// MARK: - GraphQL API Management

/// Implementación para la integración con API GraphQL.
struct GraphQLAPIManager: APIIntegration {
    func fetchData(from endpoint: String) -> String {
        return "Datos recuperados desde la API GraphQL en '\(endpoint)'."
    }
    
    func sendData(to endpoint: String, data: String) -> String {
        return "Datos enviados a la API GraphQL en '\(endpoint)':\n\(data)"
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var restAPIManager = RESTAPIManager()
print(restAPIManager.fetchData(from: "/users"))
print(restAPIManager.sendData(to: "/createUser", data: "{ 'name': 'John', 'age': 30 }"))

var graphqlAPIManager = GraphQLAPIManager()
print(graphqlAPIManager.fetchData(from: "/query"))
print(graphqlAPIManager.sendData(to: "/mutation", data: "mutation { createUser(name: 'John', age: 30) }"))

//: [Next](@next)
