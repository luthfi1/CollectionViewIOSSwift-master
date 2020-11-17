//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by Ipung Dev Center on 02/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //data
    let buku = [
        (nama: "Kursus PHP MySQL", gambar: "buku1", harga:"560000"),
        (nama: "Kursus Node.Js", gambar: "buku2", harga:"660000"),
        (nama: "Kursus Golang", gambar: "buku3", harga:"660000"),
        (nama: "Kursus Ruby", gambar: "buku4", harga:"660000"),
        (nama: "Kursus Python",  gambar: "buku5", harga:"660000"),
        (nama: "Kursus PHP MySQL", gambar: "buku6", harga:"760000"),
        (nama: "Kursus Node.Js", gambar: "buku7", harga:"860000"),
        (nama: "Kursus Golang", gambar: "buku8", harga:"460000")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        collectionView.setCollectionViewLayout(layout, animated: true)
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
        }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                let lay = collectionViewLayout as! UICollectionViewFlowLayout
                let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing

        return CGSize(width:widthPerItem, height:232)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return buku.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        let bukus = buku[indexPath.row]
        
        cell.cellLabelView.text = bukus.nama
        cell.cellImageView.image = UIImage(named:bukus.gambar)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let bukus = buku[indexPath.row]
        
        let Vcku = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        
        Vcku.stringNama = bukus.nama
        Vcku.stringGambar = bukus.gambar
        Vcku.stringHarga = bukus.harga
        
        navigationController?.pushViewController(Vcku, animated: true)
    }
    
    

}

