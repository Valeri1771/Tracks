//
//  Track.swift
//  Tracks
//
//  Created by Valeri Tsyganova on 05.03.2021.
//

import Foundation
import UIKit

struct Track {
    var artist: String
    var title: String
    var duration: String
    var cover: UIImage?
    
    init(artist: String, title: String, duration: String, cover: UIImage?) {
        self.artist = artist
        self.title = title
        self.duration = duration
        self.cover = cover
    }
}
