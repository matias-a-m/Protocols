import Foundation

// MARK: - Authentication Protocol

/// Protocolo para la autenticación de usuario.
protocol AuthenticationProtocol {
    var isAuthenticated: Bool { get set }
    
    /// Autentica al usuario con las credenciales proporcionadas.
    ///
    /// - Parameters:
    ///   - username: Nombre de usuario del usuario.
    ///   - password: Contraseña del usuario.
    func authenticate(username: String, password: String)
    
    /// Cierra la sesión del usuario, restableciendo el estado de autenticación.
    func logout()
}

// MARK: - Email Authentication

/// Implementación de autenticación por correo electrónico.
class EmailAuthentication: AuthenticationProtocol {
    var isAuthenticated: Bool = false
    
    func authenticate(username: String, password: String) {
        print("Autenticación por correo electrónico para el usuario '\(username)'.")
        isAuthenticated = true
    }
    
    func logout() {
        print("Cierre de sesión por correo electrónico.")
        isAuthenticated = false
    }
}

// MARK: - Social Media Authentication

/// Implementación de autenticación a través de redes sociales.
class SocialMediaAuthentication: AuthenticationProtocol {
    var isAuthenticated: Bool = false
    
    func authenticate(username: String, password: String) {
        print("Autenticación a través de redes sociales para el usuario '\(username)'.")
        isAuthenticated = true
    }
    
    func logout() {
        print("Cierre de sesión por redes sociales.")
        isAuthenticated = false
    }
}

// MARK: - Playground Usage

// Ejemplo de uso en un Playground:

var emailAuth = EmailAuthentication()
emailAuth.authenticate(username: "user@example.com", password: "securepassword")
print("Usuario autenticado: \(emailAuth.isAuthenticated)")

var socialAuth = SocialMediaAuthentication()
socialAuth.authenticate(username: "socialuser", password: "socialpassword")
print("Usuario autenticado: \(socialAuth.isAuthenticated)")

socialAuth.logout()
print("Usuario autenticado después del cierre de sesión: \(socialAuth.isAuthenticated)")
print("Usuario autenticado: \(socialAuth.isAuthenticated)")

//: [Next](@next)
