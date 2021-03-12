//
//  TrackDetailsViewController.swift
//  Tracks
//
//  Created by Valeri Tsyganova on 05.03.2021.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var coverLabel: UIImageView!
    
    private var track: Track?
    init(track: Track) {
        self.track = track
        super.init(nibName: nil, bundle: nil)
    } 
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func configure(with track: Track) {
        self.track = track
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationItem.title = "Track"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        guard let track = self.track else { return }
        artistLabel.text = track.artist
        titleLabel.text = track.title
        durationLabel.text = track.duration
        coverLabel.image = track.cover
        
        let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [UIColor.white.cgColor, UIColor.systemTeal.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            gradientLayer.frame = CGRect.zero
                 
        view.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.frame = view.bounds
    }
}

