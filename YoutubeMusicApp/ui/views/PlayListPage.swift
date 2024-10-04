//
//  PlayListPage.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 2.10.2024.
//

import UIKit

class PlayListPage: UIViewController {

    var songList = [Song]()

        @IBOutlet weak var songsCollectionView: UICollectionView!
        @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var albumTitleLabel: UILabel!
        @IBOutlet weak var playButton: UIButton!
        @IBOutlet weak var downloadButton: UIButton!
        @IBOutlet weak var shareButton: UIButton!
    
    
    @IBOutlet weak var moreButton: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
            songsCollectionView.delegate = self
            songsCollectionView.dataSource = self
            
       // songsCollectionView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               //songsCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
               //songsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             //  songsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               songsCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
           ])
               

        
            let s1 = Song(name: "Aşk İçinde", artist: "Mor ve Ötesi", listens: "7 Mn kez dinlendi", image: "askicinde")
            let s2 = Song(name: "Yellow", artist: "Coldplay", listens: "2,8 Mn kez dinlendi", image: "yellow")
            let s3 = Song(name: "Instant Crush", artist: "Daft Punk", listens: "793 B kez dinlendi", image: "instantcrush")
            let s4 = Song(name: "Bohemian Rhapsody", artist: "Queen", listens: "239 B kez dinlendi", image: "bohemianrhapsody")
            let s6 = Song(name: "Gitme", artist: "Dolu Kadehi Ters Tut", listens: "7 Mn kez dinlendi", image: "gitme")
            let s7 = Song(name: "Dancing Queen", artist: "ABBA", listens: "2,8 Mn kez dinlendi", image: "dancingqueen")
            let s8 = Song(name: "Hello", artist: "Adele", listens: "793 B kez dinlendi", image: "hello")
            let s9 = Song(name: "Sakinleştim", artist: "Pinhani", listens: "239 B kez dinlendi", image: "sakinlestim")
            let s10 = Song(name: "İlaç Ol Yaralarıma", artist: "Mavi Gri", listens: "7 Mn kez dinlendi", image: "ilacol")
            let s11 = Song(name: "Aşk", artist: "Tarkan", listens: "2,8 Mn kez dinlendi", image: "ask")
            let s12 = Song(name: "Blue", artist: "Billie Elish", listens: "793 B kez dinlendi", image: "blue")
            let s5 = Song(name: "Radioactive", artist: "Imagine Dragons", listens: "239 B kez dinlendi", image: "radioactive")
                
                songList.append(s1)
                songList.append(s2)
                songList.append(s3)
                songList.append(s4)
                songList.append(s5)
                songList.append(s6)
                songList.append(s7)
                songList.append(s8)
                songList.append(s9)
                songList.append(s10)
                songList.append(s11)
                songList.append(s12)
    
                albumCoverImageView.image = UIImage(named: "mix6")
               albumCoverImageView.layer.cornerRadius = 10
               albumCoverImageView.clipsToBounds = true
             
               albumTitleLabel.text = "2010 Türkçe Pop"
            
                configureButton(downloadButton)
                configureButton(shareButton)
                configureButton(addButton)
                configureButton(moreButton)
        if let layout = songsCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
               layout.scrollDirection = .vertical
              // layout.itemSize = CGSize(width: view.frame.width - 20, height: 200)
               layout.minimumLineSpacing = 10
           }
            
                songsCollectionView.reloadData()
        }
    
    func configureButton(_ button: UIButton) {
        button.layer.cornerRadius = button.frame.size.width / 2
           button.tintColor = .white
        button.backgroundColor = UIColor(named: "cell")
       }
}

extension PlayListPage: UICollectionViewDelegate, UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return songList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playListDetailCell", for: indexPath) as! PlayListDetailCell
        let song = songList[indexPath.row]
        cell.playListImage.image =  UIImage(named: song.image)
        cell.playListSong.text = song.name
        cell.playListArtist.text = song.artist
        cell.playListSong.textColor = UIColor.white
        cell.playListArtist.font = UIFont.systemFont(ofSize: 18)

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == songsCollectionView {
            let selectedSong = songList[indexPath.row]
           // playListImage.image UIImage(named: selectedSong.image)
           // playListSong.text = selectedSong.name
            //playListArtist.text = selectedSong.artist
            //playListImage.image = UIImage(named: selectedSong.image)
        }
    }
     
     }
