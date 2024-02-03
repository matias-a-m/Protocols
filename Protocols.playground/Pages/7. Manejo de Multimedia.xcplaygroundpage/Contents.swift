//: [Previous](@previous)

import Foundation

// MARK: - Media Player Protocol

/// Protocolo para el manejo de multimedia.
protocol MediaPlayer {
    /// Reproduce audio.
    ///
    /// - Returns: Mensaje indicando que el audio está siendo reproducido.
    func playAudio() -> String
    
    /// Reproduce video.
    ///
    /// - Returns: Mensaje indicando que el video está siendo reproducido.
    func playVideo() -> String
}

// MARK: - Audio Player

/// Implementación para la reproducción de audio.
struct AudioPlayer: MediaPlayer {
    func playAudio() -> String {
        return "Reproduciendo audio."
    }
    
    func playVideo() -> String {
        return "No es posible reproducir video con un reproductor de audio."
    }
}

// MARK: - Video Player

/// Implementación para la reproducción de video.
struct VideoPlayer: MediaPlayer {
    func playAudio() -> String {
        return "No es posible reproducir audio con un reproductor de video."
    }
    
    func playVideo() -> String {
        return "Reproduciendo video."
    }
}

// MARK: - Playground Usage

// Uso en un Playground:

var audioPlayer = AudioPlayer()
print(audioPlayer.playAudio())
print(audioPlayer.playVideo())

var videoPlayer = VideoPlayer()
print(videoPlayer.playAudio())
print(videoPlayer.playVideo())


//: [Next](@next)
