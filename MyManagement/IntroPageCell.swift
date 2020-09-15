//
//  IntroPageCell.swift
//  MyManagement
//
//  Created by 김민수 on 2020/09/13.
//  Copyright © 2020 MinsooKim. All rights reserved.
//

import UIKit

class IntroPageCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        var inputImage : UIImage?
        inputImage = UIImage(named: "intro1.png")
        let imgView = UIImageView(image: inputImage)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    let descriptionView: UITextView = {
        let descText = UITextView()
        descText.translatesAutoresizingMaskIntoConstraints = false
        descText.contentMode = .scaleAspectFit
        descText.textAlignment = .center
        descText.font = .systemFont(ofSize: 30)
        return descText
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupLayout()
    }
    
    private func setupLayout() {
        let ViewContainer = UIView()
        addSubview(ViewContainer)
        
        
        ViewContainer.translatesAutoresizingMaskIntoConstraints = false
        
        ViewContainer.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        ViewContainer.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        ViewContainer.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
        ViewContainer.centerXAnchor.constraint(equalTo: ViewContainer.centerXAnchor).isActive = true
        ViewContainer.centerYAnchor.constraint(equalTo: ViewContainer.centerYAnchor).isActive = true
        
        ViewContainer.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: ViewContainer.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: ViewContainer.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: ViewContainer.heightAnchor, multiplier: 0.5).isActive = true
        
        ViewContainer.addSubview(descriptionView)
        descriptionView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        descriptionView.heightAnchor.constraint(equalTo: ViewContainer.heightAnchor, multiplier: 0.5).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
