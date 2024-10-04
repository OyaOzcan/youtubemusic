//
//  ViewController.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 30.09.2024.
//

import UIKit

class Homepage: UIViewController {
    
    @IBOutlet weak var playlistCollectionView: UICollectionView!
    @IBOutlet weak var typesCollectionView: UICollectionView!
    @IBOutlet weak var songsCollectionView: UICollectionView!
    
    @IBOutlet weak var logoButton: UIBarButtonItem!
    @IBOutlet weak var playAllButton: UIButton!
    @IBOutlet weak var favoritesCollectionView: UICollectionView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var typesList = [Types]()
    var songList = [Song]()
    var playList = [Playlist]()
    var favoriteList = [Song]()
    
        override func viewDidLoad() {
            super.viewDidLoad()
          
            let screenWidth = UIScreen.main.bounds.width
            
            scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2000)
            scrollView.alwaysBounceHorizontal = false
            scrollView.alwaysBounceVertical = true
            scrollView.isDirectionalLockEnabled = true
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            typesCollectionView.delegate = self
            typesCollectionView.dataSource = self
            
            let t1 = Types(id: 1, name: "Enerjik")
            let t2 = Types(id: 2, name: "Keyifli")
            let t3 = Types(id: 3, name: "Antrenman")
            let t4 = Types(id: 4, name: "Rahatlama")
            let t5 = Types(id: 5, name: "İşe gidip gelme")
            let t6 = Types(id: 6, name: "Parti")
            let t7 = Types(id: 7, name: "Odaklanma")
            let t8 = Types(id: 8, name: "Romantik")
            let t9 = Types(id: 9, name: "Uyku")
            typesList.append(t1)
            typesList.append(t2)
            typesList.append(t3)
            typesList.append(t4)
            typesList.append(t5)
            typesList.append(t6)
            typesList.append(t7)
            typesList.append(t8)
            typesList.append(t9)
            
            
            
            playlistCollectionView.delegate = self
            playlistCollectionView.dataSource = self
            
            let p1 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix6")
            let p2 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix7")
            let p3 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix4")
            let p4 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix1")
            let p5 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix3")
            let p6 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix5")
            let p7 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix9")
            let p8 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix8")
            let p9 = Playlist(name: "SuperMix", desc: "Mor ve Ötesi, Dolu Kadehi Ters Tut, Yalın, Tarkan", image: "mix2")
           
            
            playList.append(p1)
            playList.append(p2)
           playList.append(p3)
           playList.append(p4)
            playList.append(p5)
            playList.append(p6)
           playList.append(p7)
           playList.append(p8)
            playList.append(p9)
            playlistCollectionView.reloadData()
            print(playList)
            print(playlistCollectionView.frame)
            
            songsCollectionView.delegate = self
            songsCollectionView.dataSource = self
                    
                
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
            
            favoritesCollectionView.delegate = self
            favoritesCollectionView.dataSource = self
                    
            let f1 = Song(name: "The Scientist", artist: "Coldplay", listens: "7 Mn kez dinlendi", image: "thescientist")
            let f2 = Song(name: "Kelebekler", artist: "Kelebekler", listens: "2,8 Mn kez dinlendi", image: "kelebekler")
            let f3 = Song(name: "Diamond", artist: "Rihanna", listens: "793 B kez dinlendi", image: "diamond")
          
                    
            favoriteList.append(f1)
            favoriteList.append(f2)
            favoriteList.append(f3)
            
            let favoriteLayout = UICollectionViewFlowLayout()
            favoriteLayout.scrollDirection = .horizontal

            let favoriteItemWidth = UIScreen.main.bounds.width - 20
            let favoriteItemHeight: CGFloat = 260

            favoriteLayout.itemSize = CGSize(width: favoriteItemWidth, height: favoriteItemHeight)
            favoriteLayout.minimumLineSpacing = 10
            favoriteLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            favoritesCollectionView.collectionViewLayout = favoriteLayout

            playAllButton.layer.borderWidth = 1
            playAllButton.layer.borderColor = UIColor.lightGray.cgColor
            playAllButton.layer.cornerRadius = 10
                
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            //layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 10
            layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
            layout.itemSize = CGSize(width: 120, height: 50)
            typesCollectionView.collectionViewLayout = layout
            
            
            let songLayout = UICollectionViewFlowLayout()
            songLayout.scrollDirection = .horizontal
            songsCollectionView.frame.size.height = 280
          
            let itemWidth = screenWidth - 40
            let itemHeight: CGFloat = 68
            
            songLayout.itemSize = CGSize(width: itemWidth, height: itemHeight)
            songLayout.minimumInteritemSpacing = 0
            songLayout.minimumLineSpacing = 0

            songsCollectionView.collectionViewLayout = songLayout
            songsCollectionView.isPagingEnabled = true
            
            let playlistLayout = UICollectionViewFlowLayout()
            playlistLayout.scrollDirection = .horizontal
            playlistLayout.minimumLineSpacing = 5
            playlistLayout.minimumInteritemSpacing = 5
            playlistLayout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 5)

            let pItemWidth = screenWidth / 3
            let pItemHeight: CGFloat = 200

            playlistLayout.itemSize = CGSize(width: pItemWidth, height: pItemHeight)
            playlistCollectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
            playlistCollectionView.collectionViewLayout = playlistLayout
        }
    
    @IBAction func playAllSongs(_ sender: Any) {
        for song in songList {
                print("Şarkı: \(song.name) - Sanatçı: \(song.artist)")
            }
       performSegue(withIdentifier: "toAllSongs", sender: songList)
        }
}

    extension Homepage: UICollectionViewDelegate, UICollectionViewDataSource, HucreProtocol {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                if collectionView == typesCollectionView {
                    return typesList.count
                }
                else if collectionView == songsCollectionView {
                    return songList.count
                }
                else if collectionView == playlistCollectionView {
                    return playList.count
                }
            else if collectionView == favoritesCollectionView {
                return favoriteList.count
            }
                    return 0
                }
        
        func sepeteEkleTiklandi(indexPath: IndexPath) {
            let type = typesList[indexPath.row]
            print("\(type.name!) ~ türündeki müzikler")
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                if collectionView == typesCollectionView {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "typeCell", for: indexPath) as! TypesCell
                    let type = typesList[indexPath.row]
                    cell.labelType.text = type.name
                    cell.labelType.textColor = UIColor.white
                    cell.backgroundColor = UIColor(named: "cell")
                    cell.layer.borderColor = UIColor.lightGray.cgColor
                    cell.layer.borderWidth = 0.3
                    cell.layer.cornerRadius = 20
                    cell.hucreProtocol = self
                    cell.indexPath = indexPath
                    //cell.labelType.lineBreakMode =
                    return cell
                }
                else if collectionView == songsCollectionView {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "songCell", for: indexPath) as! SongsCell
                    let song = songList[indexPath.row]
                    cell.songNameLabel.text = song.name
                    cell.songNameLabel.textColor = UIColor.white
                    cell.songNameLabel.font = UIFont.systemFont(ofSize: 18)
                    cell.artistLabel.text = song.artist
                    cell.artistLabel.textColor = UIColor.white
                    cell.artistLabel.font = UIFont.systemFont(ofSize: 14)
                    cell.listensLabel.text = song.listens
                    cell.listensLabel.textColor = UIColor.white
                    cell.listensLabel.font = UIFont.systemFont(ofSize: 14)
                    
                    cell.songImageView.image = UIImage(named: song.image)
                    cell.songImageView.translatesAutoresizingMaskIntoConstraints = false
                    cell.songImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
                    cell.songImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true 
                    cell.songImageView.contentMode = .scaleAspectFill
                    return cell
                } else if collectionView == playlistCollectionView {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playlistCell", for: indexPath) as! PlayListCell
                    
                    let playlist = playList[indexPath.row]
                    cell.labelPlaylistName.text = playlist.name
                    cell.labelPlaylistDesc.text = playlist.desc
                    cell.playlistImageView.image = UIImage(named: playlist.image)
                    cell.playlistImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
                    cell.playlistImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
                    
                    return cell
                } else  if collectionView == favoritesCollectionView {
                    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favoriteCell", for: indexPath) as! FavoriteCell
                    let favorite = favoriteList[indexPath.row]
                    
                    cell.songNameLabel.text = favorite.name
                    cell.artistNameLabel.text = favorite.artist
                    cell.songImageView.image = UIImage(named: favorite.image)
                    cell.songImageView.layer.cornerRadius = 10
                    cell.songImageView.clipsToBounds = true
                    
                    return cell
                }
            
                return UICollectionViewCell()
            }
            
            func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                if collectionView == typesCollectionView {
                    let type = typesList[indexPath.row]
                   // performSegue(withIdentifier: "toDetay", sender: type)
                } else if collectionView == songsCollectionView {
                    let song = songList[indexPath.row]
                    print("\(song.name) şarkısı seçildi")
                    performSegue(withIdentifier: "toDetail"  , sender: song)
                }
                else if collectionView == playlistCollectionView {
                    let playlist = playList[indexPath.row]
                    let song = songList[indexPath.row]
                    print("\(playlist.name) playlist seçildi")
                    performSegue(withIdentifier: "toAllSongs", sender: songList)

                    //performSegue(withIdentifier: "toAllSongs", sender: songList)
                    //performSegue(withIdentifier: "toAllSongs", sender: playlist)
                }
            }
        
          
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toDetail" {
                if let song = sender as? Song {
                    let gidilecekVC = segue.destination as! DetailPage
                    gidilecekVC.song = song
                }
            }
            if segue.identifier == "toAllSongs" {
                    if let allSongsVC = segue.destination as? PlayListPage{
                        allSongsVC.songList = self.songList
                    }
                }
        }
    }

    

