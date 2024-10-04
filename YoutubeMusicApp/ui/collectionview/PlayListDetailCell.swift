//
//  PlayListDetailCell.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 2.10.2024.
//

import UIKit

class PlayListDetailCell: UICollectionViewCell {
    @IBOutlet weak var playListSong: UILabel!
    @IBOutlet weak var playListArtist: UILabel!
    @IBOutlet weak var playListImage: UIImageView!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           
        playListImage.contentMode = .scaleAspectFill 
                playListImage.layer.cornerRadius = 8
                playListImage.clipsToBounds = true
                playListImage.translatesAutoresizingMaskIntoConstraints = false
                
              
                NSLayoutConstraint.activate([
                    playListImage.widthAnchor.constraint(equalToConstant: 80),
                    playListImage.heightAnchor.constraint(equalToConstant: 80),
                    playListImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                    playListImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
                ])
                
             
                playListSong.font = UIFont.systemFont(ofSize: 18, weight: .bold)
                playListSong.textColor = UIColor.black
                playListSong.translatesAutoresizingMaskIntoConstraints = false
                
                playListArtist.font = UIFont.systemFont(ofSize: 16, weight: .regular)
                playListArtist.textColor = UIColor.darkGray
                playListArtist.translatesAutoresizingMaskIntoConstraints = false

               NSLayoutConstraint.activate([
                    playListSong.leadingAnchor.constraint(equalTo: playListImage.trailingAnchor, constant: 10),
                    playListSong.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                    playListSong.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
                    
                    playListArtist.leadingAnchor.constraint(equalTo: playListSong.leadingAnchor),
                    playListArtist.trailingAnchor.constraint(equalTo: playListSong.trailingAnchor),
                    playListArtist.topAnchor.constraint(equalTo: playListSong.bottomAnchor, constant: 4)
                ]) 
            }
        }
