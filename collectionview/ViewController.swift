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
        //to use a custom class
        cvProduct.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productName.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cvProduct.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.ivProduct.image = UIImage(named: productImage[indexPath.row])
        cell.lblProduct.text = productName[indexPath.row]
        cell.contentView.backgroundColor = UIColor.blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.frame.size.width - 120) / 2 // Adjust the width as needed
        return CGSize(width: 150, height: 110) // Set both width and height to maintain a square cell
        }
}

