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
        // always remove some pixel (here 1 and 2) in order to be able to display the
        // wanted number of cells side by side
        layout.itemSize = CGSize(width: view.frame.size.width / 4 - 1, height: view.frame.size.width / 4 - 2)
        // horizontal gap between cells
        layout.minimumLineSpacing = 1
        // vertical gap between cells
        layout.minimumInteritemSpacing = 1
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.dataSource = self
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.frame = view.bounds
        view.addSubview(collectionView)
        
    }
    
    // how many cells? usually you would count the number from a data structure such as an array
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    // what do you want inside the cells?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // you'll need to register the identifier within viewDidLoad() with collectionView.register()
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath)
        
        return cell
    }
    

}

