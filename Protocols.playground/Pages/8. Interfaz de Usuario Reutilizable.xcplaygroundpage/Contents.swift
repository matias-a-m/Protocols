//: [Previous](@previous)

import Foundation

// MARK: - Reusable UI Component Protocol

/// Protocolo para la creación de componentes reutilizables de interfaz de usuario.
protocol ReusableUIComponent {
    /// Identificador único del componente.
    var identifier: String { get }
    
    /// Configura la interfaz de usuario del componente.
    func setupUI()
}

// MARK: - Button Component

/// Implementación para un botón reutilizable.
struct ButtonComponent: ReusableUIComponent {
    var identifier: String
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    func setupUI() {
        print("Configurando el botón con identificador '\(identifier)'.")
    }
}

// MARK: - Text Field Component

/// Implementación para un campo de texto reutilizable.
struct TextFieldComponent: ReusableUIComponent {
    var identifier: String
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    func setupUI() {
        print("Configurando el campo de texto con identificador '\(identifier)'.")
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var button = ButtonComponent(identifier: "loginButton")
button.setupUI()

var textField = TextFieldComponent(identifier: "usernameField")
textField.setupUI()


//: [Next](@next)
