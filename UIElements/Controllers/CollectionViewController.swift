//
//  CollectionViewController.swift
//  UIElements
//
//  Created by Efrain Ayllon on 11/18/17.
//  Copyright © 2017 Efrain Ayllon. All rights reserved.
//

import UIKit



let cellIdentifiers:[String] = ["Home_1","Home_2","Home_3","Home_4","Home_5","Home_6","Home_7","Home_8","Home_9","Home_10","Home_11","Home_12","Home_13","Home_14","Home_15","Home_16","Home_17","Home_18","Home_19","Home_20","Home_21",]
let sizes:[CGSize] = [CGSize(width:96, height:96),CGSize(width:96, height:96),CGSize(width:96, height:96)]
class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let cellSize = 96
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: cellSize, height: cellSize)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 50
        collectionView!.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellIdentifiers.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifiers[indexPath.item], for: indexPath)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return sizes[indexPath.item]
    }

}
