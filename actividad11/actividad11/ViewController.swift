//
//  ViewController.swift
//  actividad11
//
//  Created by user182861 on 4/23/21.
//  Copyright © 2021 tecmilenio.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imgNum:[String] = []

    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self

        for valor in 1...19{
            imgNum.append("\(valor)/")
        }

    }
}

extension ViewController: UICollectionViewDelegate{

    func collectionView( collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        collectionView.deselectItem(at: indexPath, animated: true)

        print("You tapped me")
    }
}

extension ViewController: UICollectionViewDataSource{

    func collectionView( collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgNum.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell

        cell.configured(with: UIImage(named: imgNum[indexPath.row])!)
        return cell
    }
}
