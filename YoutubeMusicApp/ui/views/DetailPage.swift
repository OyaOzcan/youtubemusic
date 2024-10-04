//
//  DetailPage.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 30.09.2024.
//

import UIKit

class DetailPage: UIViewController {
    
    @IBOutlet weak var categoryCollectionview: UICollectionView!
    @IBOutlet weak var labelArtist: UILabel!
    @IBOutlet weak var labelSongName: UILabel!
    @IBOutlet weak var songImageView: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
    //  @IBOutlet weak var likeButton: UIButton!
 //   @IBOutlet weak var commentButton: UIButton!
  //  @IBOutlet weak var saveButton: UIButton!
  //  @IBOutlet weak var shareButton: UIButton!
   // @IBOutlet weak var sliderProgress: UISlider!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var repeatButton: UIButton!
    @IBOutlet weak var shuffleButton: UIButton!
    //@IBOutlet weak var currentTimeLabel: UILabel!
   // @IBOutlet weak var totalTimeLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    var categoryList = [Categories]()
    
    var song:Song?
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionview.delegate = self
        categoryCollectionview.dataSource = self
        if let s = song {
            labelSongName.text = s.name
            songImageView.image = UIImage(named: s.image)
            labelArtist.text = s.artist
            
        }
        let c1 = Categories(icon: "hand.thumbsup", desc: "375 B")
        let c2 = Categories(icon: "bubble.left", desc: "767")
        let c3 = Categories(icon: "bookmark", desc: "Save")
        let c4 = Categories(icon: "square.and.arrow.up", desc: "Share")
       
        
        categoryList.append(c1)
        categoryList.append(c2)
        categoryList.append(c3)
        categoryList.append(c4)
        
        let categoryLayout = UICollectionViewFlowLayout()
        categoryLayout.scrollDirection = .horizontal
        categoryLayout.minimumLineSpacing = 10
        categoryLayout.minimumInteritemSpacing = 10
        categoryLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        
        let categorytemWidth = 75
        let categoryItemHeight: CGFloat = 35

        categoryLayout.itemSize = CGSize(width: CGFloat(categorytemWidth), height: CGFloat(categoryItemHeight))
        categoryCollectionview.collectionViewLayout = categoryLayout
        
        setupUI()
    }
    func setupUI() {
        
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .regular) // İkonu 40 pt büyüklüğünde ayarla
        let moreLargeConfig = UIImage.SymbolConfiguration(pointSize: 40, weight: .regular)
        let shuffleImage = UIImage(systemName: "shuffle", withConfiguration: largeConfig)
        shuffleButton.setImage(shuffleImage, for: .normal)

        // Play/Pause butonu
        let playImage = UIImage(systemName: "play.circle.fill", withConfiguration: moreLargeConfig)
        playButton.setImage(playImage, for: .normal)

        let nextImage = UIImage(systemName: "forward.fill", withConfiguration: largeConfig)
        nextButton.setImage(nextImage, for: .normal)

        let previousImage = UIImage(systemName: "backward.fill", withConfiguration: largeConfig)
        previousButton.setImage(previousImage, for: .normal)

        let repeatImage = UIImage(systemName: "repeat", withConfiguration: largeConfig)
        repeatButton.setImage(repeatImage, for: .normal)

       
                labelSongName.font = UIFont.boldSystemFont(ofSize: 24)
                labelSongName.textColor = .white
                
                labelArtist.font = UIFont.systemFont(ofSize: 18)
                labelArtist.textColor = .lightGray
                
                songImageView.layer.cornerRadius = 8
                songImageView.clipsToBounds = true
                
                slider.minimumTrackTintColor = .white
                slider.maximumTrackTintColor = .lightGray
                slider.thumbTintColor = .white
                
          
              }
    
    @IBAction func playPauseTapped(_ sender: UIButton) {
            if playPauseButton.currentImage == UIImage(systemName: "play.fill") {
                playPauseButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            } else {
                playPauseButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            }
        }
}


extension DetailPage: UICollectionViewDelegate, UICollectionViewDataSource {
            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return categoryList.count
            }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
           
           let category = categoryList[indexPath.row]
           
           cell.labelDesc.text = category.desc
           cell.iconImageView.image = UIImage(systemName: category.icon)

           cell.backgroundColor = UIColor(named: "cell")
           cell.layer.borderColor = UIColor.lightGray.cgColor
           cell.layer.borderWidth = 0.3
           cell.layer.cornerRadius = 20
        
           return cell
        }
        
}




