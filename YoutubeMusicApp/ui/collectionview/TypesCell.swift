//
//  TypesCell.swift
//  YoutubeMusicApp
//
//  Created by Oya Selmin Özcan on 30.09.2024.
//

import UIKit


protocol HucreProtocol{
    func sepeteEkleTiklandi(indexPath:IndexPath)
}

class TypesCell: UICollectionViewCell {
    
    @IBOutlet weak var labelType: UILabel!
    var indexPath:IndexPath?
    var hucreProtocol:HucreProtocol?
    
    
    @IBAction func butonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
    }
}
