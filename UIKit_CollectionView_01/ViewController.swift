//
//  ViewController.swift
//  UIKit_CollectionView_01
//
//  Created by Matteo on 01/08/2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        guard let collectionView = collectionView else { return }
        
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "myCV")
        collectionView.frame = view.bounds
        view.addSubview(collectionView)
        
    }
    
    // how many cells?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    // what do you want inside the cells?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // you'll need to register the identifier within viewDidLoad() with collectionView.register()
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCV", for: indexPath)
        
        cell.contentView.backgroundColor = .systemYellow
        
        return cell
    }
    

}

