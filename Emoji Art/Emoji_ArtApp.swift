//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Радомир Радомир on 1/23/24.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
