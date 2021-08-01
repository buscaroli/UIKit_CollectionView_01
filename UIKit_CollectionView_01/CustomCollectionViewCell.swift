//
//  CustomCollectionViewCell.swift
//  UIKit_CollectionView_01
//
//  Created by Matteo on 01/08/2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cvCell"
    
    private let customImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.sizeToFit()
        imageView.image = UIImage(systemName: "leaf")
        imageView.backgroundColor = .systemYellow
        
        return imageView
    }()
    
    private let customLabel: UILabel = {
        let label = UILabel()
        label.text = "Leaf"
        label.backgroundColor = .systemTeal
        label.textAlignment = .center
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .systemGreen
        contentView.addSubview(customImageView)
        contentView.addSubview(customLabel)

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
            
        // the image is at the top, starts at y=0 and has a height of 80% the height
        // of the cell
        customImageView.frame = CGRect(x: 0,
                                       y: 0,
                                       width: contentView.frame.size.width,
                                       height: contentView.frame.size.height * 0.8)
        
        // the label is at the bottom, starts at y=80% of the height of the cell and has
        // a height of 20% the frame
        customLabel.frame = CGRect(x: 0,
                                   y: contentView.frame.size.height * 0.8,
                                   width: contentView.frame.size.width,
                                   height: contentView.frame.size.height * 0.2)
        
        
    }
    
}
