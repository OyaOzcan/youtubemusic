//
//  FavoriteCell.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 1.10.2024.
//

import UIKit

class FavoriteCell: UICollectionViewCell {
    
    @IBOutlet weak var listensLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var songImageView: UIImageView!
    
    override func awakeFromNib() {
            super.awakeFromNib()

        songImageView.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   songImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                   songImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                   songImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
                   songImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.75) 
               ])
               songImageView.layer.cornerRadius = 10
               songImageView.contentMode = .scaleAspectFill
               songImageView.clipsToBounds = true

           
               songNameLabel.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   songNameLabel.topAnchor.constraint(equalTo: songImageView.bottomAnchor, constant: 8),
                   songNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                   songNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
               ])
               songNameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
               songNameLabel.textColor = UIColor.white

               // Sanatçı adı
               artistNameLabel.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   artistNameLabel.topAnchor.constraint(equalTo: songNameLabel.bottomAnchor, constant: 4),
                   artistNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                   artistNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                   artistNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
               ])
               artistNameLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
               artistNameLabel.textColor = UIColor.lightGray
        }
}
