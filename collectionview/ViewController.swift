//
//  ViewController.swift
//  collectionview
//
//  Created by Shruti Makwana on 21/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    let productName : [String] = [
        "bicycle",
        "curtains",
        "dishes",
        "shirt",
        "ornaments",
        "glasses",
        "table",
        "shoes",
        "bedsheets",
        "earphones",
        "beauty"
      ]
    
    let productImage : [String] = [
        "bicycle.jpeg",
        "curtains.jpeg",
        "dishes.jpeg",
        "shirt.jpeg",
        "ornaments.jpeg",
        "glasses.jpeg",
        "table.jpeg",
        "shoes.jpeg",
        "bedsheets.jpeg",
        "earphones.jpeg",
        "beauty.jpeg"
      ]

    @IBOutlet weak var cvProduct: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productName.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cvProduct.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
//        cell.ivProduct.image = UIImage(named: productImage[indexPath.row]);
//        cell.lblProduct.text = productName[indexPath.row];
        cell.layer.backgroundColor = UIColor.blue.cgColor;
        
        return cell;
    }
    
    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        let size = (cvProduct.frame.size.width-20)/2;
        return CGSize(width: size, height: size);
    }
}

