//
//  DetailViewController.swift
//  CollectionViewApp
//
//  Created by Ipung Dev Center on 02/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var stringGambar = ""
    var stringNama = ""
    var stringHarga = ""
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTextView: UILabel!
    @IBOutlet weak var detailHargaView: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = UIImage(named: stringGambar)
        detailTextView.text = stringNama
        detailHargaView.text = stringHarga

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
