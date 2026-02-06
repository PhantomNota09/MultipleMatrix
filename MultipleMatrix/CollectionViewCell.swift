//
//  CollectionViewCell.swift
//  MultipleMatrix
//
//  Created by Surya Rayala on 2/6/26.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel?
    
    func configure(with indexPath: Int) {
        label?.text = String(indexPath + 1)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
