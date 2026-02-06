//
//  ViewController.swift
//  MultipleMatrix
//
//  Created by Surya Rayala on 2/6/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiCollectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        uiCollectionView?.dataSource = self
        uiCollectionView?.collectionViewLayout = layout
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.configure(with: indexPath.row)
        
        let value = Int(cell.label?.text ?? "0") ?? 0
        
        if (value%3 == 0 && value%5 == 0) {
            cell.backgroundColor = .red
        }
        else if (value%3 == 0 || value%5 == 0) {
            if value%3 == 0 {
                cell.backgroundColor = .green
            }
            
            if value%5 == 0 {
                cell.backgroundColor = .blue
            }
        }

        else {
            cell.backgroundColor = .lightGray
        }
                
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 60)
    }
}
