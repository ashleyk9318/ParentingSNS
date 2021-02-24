//
//  ProfileTabsCollectionReusableView.swift
//  ParentingSNS
//
//  Created by Ashley Kim on 1/20/21.
//

import UIKit

protocol ProfileTabsCollectionReusableViewDelegate: AnyObject {
    func didTapGridButtonTab()
    func didTapTaggedButtonTab()
}

class ProfileTabsCollectionReusableView: UICollectionReusableView {
    static let identifier = "ProfileTabsCollectionReusableView"

    public weak var delegate: ProfileTabsCollectionReusableViewDelegate?
    
    struct Constants {
        static let padding: CGFloat = 8
    }
    
    private let gridButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.tintColor = .systemBlue
        button.setBackgroundImage(UIImage(systemName: "square.grid.2x2"), for: .normal)
        
        return button
    }()
    
    private let taggedButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.tintColor = .lightGray
        button.setBackgroundImage(UIImage(systemName: "camera"), for: .normal)
        
        return button
    }()
    
    private let postLabel: UILabel = {
        let label = UILabel()
        label.text = "Posts"
        label.font = UIFont(name: "CircularStd-Black", size: 14)
        label.textColor = .label
//        label.numberOfLines = 0 // line wrap
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(gridButton)
        addSubview(taggedButton)
        addSubview(postLabel)
        
        gridButton.addTarget(self,
                             action: #selector(didTapGridButton),
                             for: .touchUpInside)
        taggedButton.addTarget(self,
                               action: #selector(didTapTaggedButton),
                               for: .touchUpInside)
    }
    
    @objc private func didTapGridButton() {
        gridButton.tintColor = .systemBlue
        taggedButton.tintColor = .lightGray
        delegate?.didTapGridButtonTab()
        
    }
    
    @objc private func didTapTaggedButton() {
        taggedButton.tintColor = .systemBlue
        gridButton.tintColor = .lightGray
        delegate?.didTapTaggedButtonTab()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = CGFloat(20)
        let buttonX = width - 24 - size*2
//        let size = height - (Constants.padding * 2)
//        let girdButtonX = ((width / 2) - size) / 2
        
        postLabel.frame = CGRect(x: 24,
                                  y: Constants.padding,
                                  width: 50,
                                  height: size)
        
        gridButton.frame = CGRect(x: buttonX,
                                  y: Constants.padding,
                                  width: size,
                                  height: size)
        taggedButton.frame = CGRect(x: gridButton.right + 8,
                                    y: Constants.padding,
                                    width: size,
                                    height: size)
    }
}

