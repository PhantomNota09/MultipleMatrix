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
        layout.itemSize = CGSize(width: 70, height: 70)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 2, bottom: 5, right: 2)
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
        
        cell.backgroundColor = .lightGray

        cell.configure(with: indexPath.row)
        
        let value = Int(cell.label?.text ?? "0") ?? 0
        
        cell.changeTest(with: cell, value : value)
                
        return cell
    }
}
