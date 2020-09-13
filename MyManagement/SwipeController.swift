//
//  SwipeController.swift
//  MyManagement
//
//  Created by 김민수 on 2020/09/13.
//  Copyright © 2020 MinsooKim. All rights reserved.
//

import UIKit

class SwipeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let introImages = ["intro1", "intro2", "intro3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.register(IntroPageCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.isPagingEnabled = true
        
        setupBottomLayout()
    }
    
    private func setupBottomLayout() {
        let bottomView = UIStackView(arrangedSubviews: [pageControl])
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.distribution = .fillEqually
        
        view.addSubview(bottomView)
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 3
        pc.currentPageIndicatorTintColor = .purple
        pc.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        
        return pc
    }()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! IntroPageCell
        print("index:", indexPath.item)
        let image = introImages[indexPath.item]
        // pageControl.currentPage = pageControl.currentPage + 1
        cell.imageView.image = UIImage(named: image)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
}
