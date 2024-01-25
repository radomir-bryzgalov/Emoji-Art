//
//  EmojiArtDocument.swift
//  Emoji Art
//
//  Created by Радомир Радомир on 1/23/24.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    typealias Emoji = EmojiArt.Emoji
    
    @Published private var emojiArt = EmojiArt()
    
    var emojis: [Emoji] {
        emojiArt.emojis
    }
    
    init(){
        emojiArt.addEmoji("👑", at: .init(x: -200, y: 150), size: 200)
        emojiArt.addEmoji("👢", at: .init(x: 250, y: -150), size: 80)
    }
    
    var backround: URL? {
        emojiArt.backround
    }
    
    //MARK: - Intent(s)
    
    func setBackroung(_ url: URL?) {
        emojiArt.backround = url
    }
    func addEmoji(_ emoji: String, at position: Emoji.Position, size: CGFloat){
        emojiArt.addEmoji(emoji, at: position, size: Int(size))
    }
    
}

extension EmojiArt.Emoji{
    var font: Font {
        Font.system(size: CGFloat(size))
    }
}

extension EmojiArt.Emoji.Position{
    func `in` (_ geometry: GeometryProxy) -> CGPoint{
        let center = geometry.frame(in: .local).center
        return CGPoint(x: center.x + CGFloat(x), y: center.y - CGFloat(y))
        
    }
}
