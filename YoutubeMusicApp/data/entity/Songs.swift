//
//  Songs.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 30.09.2024.
//

import Foundation

class Song {
    let name: String
    let artist: String
    let listens: String
    let image: String
    
    init(name: String, artist: String, listens: String, image: String) {
        self.name = name
        self.artist = artist
        self.listens = listens
        self.image = image
    }
}
