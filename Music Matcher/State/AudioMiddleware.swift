//
//  AudioMiddleware.swift
//  Music Matcher
//
//  Created by Scott Nicholes on 1/18/23.
//

import Foundation
import Combine
import AVFoundation

func audioPlayerMiddleware(using players: [Note: AVAudioPlayer?]) -> Middleware<MusicMatcherState, MusicMatcherAction> {
    { state, action in
        switch action {
        case .flipCard(let id):
            guard let card = state.selectedCards.first(where: { $0.id == id }) else { break }
            
            guard let player = players[card.content.sound] else { break }
            guard let player = player else { break }
            if player.isPlaying {
                player.pause()
            }
            player.currentTime = 0
            player.play()

        default:
            break
        }
        
        return Empty().eraseToAnyPublisher()
    }
}
