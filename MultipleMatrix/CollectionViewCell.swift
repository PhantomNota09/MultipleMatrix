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
    
    func changeTest(with cell: UICollectionViewCell, value: Int) {
        if (value%3 == 0 && value%5 == 0) {
            label?.text = "FizzBuzz"
        }
        else if (value%3 == 0 || value%5 == 0) {
            if value%3 == 0 {
                label?.text = "Fizz"
            }
            
            if value%5 == 0 {
                label?.text = "Buzz"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
