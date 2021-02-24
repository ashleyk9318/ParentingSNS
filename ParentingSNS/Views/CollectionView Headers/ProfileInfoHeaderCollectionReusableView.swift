//
//  ProfileInfoHeaderCollectionReusableView.swift
//  ParentingSNS
//
//  Created by Ashley Kim on 1/20/21.
//

import UIKit

protocol ProfileInfoHeaderCollectionReusableViewDelegate: AnyObject {
    func profileHeaderDidTapPostsButton(_ header: ProfileInfoHeaderCollectionReusableView)
    func profileHeaderDidTapFollowersButton(_ header: ProfileInfoHeaderCollectionReusableView)
    func profileHeaderDidTapFollowingButton(_ header: ProfileInfoHeaderCollectionReusableView)
    func profileHeaderDidTapEditProfileButton(_ header: ProfileInfoHeaderCollectionReusableView)
}

final class ProfileInfoHeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "ProfileInfoHeaderCollectionReusableView"
    
    public weak var delegate: ProfileInfoHeaderCollectionReusableViewDelegate?
    
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    private let profilePhotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGray5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ashley Kim"
        label.font = UIFont(name: "CircularStd-Black", size: 20.5)
        label.textColor = .label
        label.numberOfLines = 1
        return label
    }()
    
//    private let locationLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Milpitas, CA"
//        label.font = UIFont(name: "CircularStd-Black", size: 16)
//        label.textColor = .lightGray
//        label.numberOfLines = 0 // line wrap
//        return label
//    }()
    
//    private let postsLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Posts"
//        label.font = UIFont(name: "CircularStd-Black", size: 12)
//        label.textColor = .lightGray
//        label.numberOfLines = 0 // line wrap
//        return label
//    }()
//
//    private let followersLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Followers"
//        label.font = UIFont(name: "CircularStd-Black", size: 12)
//        label.textColor = .lightGray
//        label.numberOfLines = 0 // line wrap
//        return label
//    }()
//
//    private let followingLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Following"
//        label.font = UIFont(name: "CircularStd-Black", size: 12)
//        label.textColor = .lightGray
//        label.numberOfLines = 0 // line wrap
//        return label
//    }()
    
    private let postNum: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.textColor = .label
        label.font = .circularBold(size: 16)
        label.numberOfLines = 1
        return label
    }()
    
    private let followerNum: UILabel = {
        let label = UILabel()
        label.text = "32"
        label.textColor = .label
        label.font = .circularBold(size: 16)
        label.numberOfLines = 1
        return label
    }()
    
    private let followingNum: UILabel = {
        let label = UILabel()
        label.text = "894"
        label.textColor = .label
        label.font = .circularBold(size: 16)
        label.numberOfLines = 1
        return label
    }()
    
    private let postsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Posts", for: .normal)
        button.setTitleColor(.warmGrey(), for: .normal)
        button.titleLabel?.font = .circularBook(size: 12)
//        button.backgroundColor = .secondarySystemBackground
        return button
    }()

    private let followersButton: UIButton = {
        let button = UIButton()
        button.setTitle("Followers", for: .normal)
        button.setTitleColor(.warmGrey(), for: .normal)
        button.titleLabel?.font = .circularBook(size: 12)
//        button.backgroundColor = .secondarySystemBackground
        return button
    }()

    private let followingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Following", for: .normal)
        button.setTitleColor(.warmGrey(), for: .normal)
        button.titleLabel?.font = .circularBook(size: 12)
//        button.backgroundColor = .secondarySystemBackground
        return button
    }()
    
    private let editProfileButton: UIButton = {
        let button = UIButton()
        button.setTitle("Edit Profile", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .circularBook(size: 16)
//        button.backgroundColor = .secondarySystemBackground
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
//        button.backgroundColor = .secondarySystemBackground
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.pinkishGrey().cgColor
//        button.layer.borderColor = UIColor.secondaryLabel.cgColor
        return button
    }()
    
    private let listButton: UIButton = {
        let button = UIButton()
//        button.setTitle("List", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.tintColor = .label
//        button.setBackgroundImage(UIImage(systemName: "list.bullet"), for: .normal)
        button.setImage(UIImage(systemName: "list.bullet"), for: .normal)
//        button.backgroundColor = .secondarySystemBackground
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.pinkishGrey().cgColor
//        button.layer.borderColor = UIColor.secondaryLabel.cgColor
        return button
    }()
    
    private let bioTitle: UILabel = {
        let label = UILabel()
        label.text = "About me"
        label.textColor = .label
        label.font = .circularBold(size: 14)
        label.numberOfLines = 1
        return label
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.text = "I just got married. I got married at a fairly young age, and no one has experience of marriage or giving birth among my friends. Please share more tips with me!"
        label.font = .circularBook(size: 14)
        label.textColor = .greyishBrown()
        label.numberOfLines = 0 // line wrap
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        addButtonActions()
        backgroundColor = .systemBackground
        clipsToBounds = true
    }
    
    private func addSubviews() {
        
        addSubview(profilePhotoImageView)
        addSubview(nameLabel)
//        addSubview(locationLabel)
//        addSubview(postsLabel)
//        addSubview(followingLabel)
//        addSubview(followersLabel)
        addSubview(postNum)
        addSubview(followerNum)
        addSubview(followingNum)
        addSubview(postsButton)
        addSubview(followingButton)
        addSubview(followersButton)
        addSubview(editProfileButton)
        addSubview(listButton)
        addSubview(bioTitle)
        addSubview(bioLabel)
        
    }
    
    private func addButtonActions() {
        followersButton.addTarget(self,
                                  action: #selector(didTapFollowerButton),
                                  for: .touchUpInside)
        followingButton.addTarget(self,
                                  action: #selector(didTapFollowingButton),
                                  for: .touchUpInside)
        postsButton.addTarget(self,
                              action: #selector(didTapPostsButton),
                              for: .touchUpInside)
        editProfileButton.addTarget(self,
                                    action: #selector(didTapEditProfileButton),
                                    for: .touchUpInside)
        listButton.addTarget(self,
                             action: #selector(didTapListButton),
                             for: .touchUpInside)
        
    }
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
            
        let profilePhotoSize = width / 5
        profilePhotoImageView.frame = CGRect(x: (width - profilePhotoSize) / 2,
                                             y: safeAreaInsets.top + 24,
                                             width: profilePhotoSize,
                                             height: profilePhotoSize).integral
        
        profilePhotoImageView.layer.cornerRadius = profilePhotoSize / 2.0
        
        
        let labelWidth = CGFloat(150)
        nameLabel.frame = CGRect(x: width / 3 + 10,
                                 y: profilePhotoImageView.bottom + 4,
                                 width: labelWidth,
                                 height: 20).integral
        
//        locationLabel.frame = CGRect(x: width / 3 + 15,
//                                     y: nameLabel.bottom + 8,
//                                     width: labelWidth,
//                                     height: 16).integral
        
//        let buttonHeight = profilePhotoSize / 2
//        let countButtonWidth = (width - 10 - profilePhotoSize) / 3
        let buttonHeight = CGFloat(15)
        let countButtonWidth = CGFloat(72)
  
//        postsLabel.frame = CGRect(x: (width - countButtonWidth*3 - 24*2) / 2,
//                                  y: locationLabel.bottom + 24,
//                                  width: countButtonWidth,
//                                  height: buttonHeight).integral
//
//        followersLabel.frame = CGRect(x: postsLabel.right + 24,
//                                      y: locationLabel.bottom + 24,
//                                      width: countButtonWidth,
//                                      height: buttonHeight).integral
//
//        followingLabel.frame = CGRect(x: followersLabel.right + 24,
//                                      y: locationLabel.bottom + 24,
//                                      width: countButtonWidth,
//                                      height: buttonHeight).integral
                
        postsButton.frame = CGRect(x: (width - countButtonWidth*3 - 24*2) / 2,
                                   y: nameLabel.bottom + 49,
                                   width: countButtonWidth,
                                   height: buttonHeight).integral

        followersButton.frame = CGRect(x: postsButton.right + 24,
                                       y: nameLabel.bottom + 49,
                                       width: countButtonWidth,
                                       height: buttonHeight).integral

        followingButton.frame = CGRect(x: followersButton.right + 24,
                                       y: nameLabel.bottom + 49,
                                       width: countButtonWidth,
                                       height: buttonHeight).integral
        
        let numWidth = CGFloat(34)
        let numHeight = CGFloat(21)
        
        postNum.frame = CGRect(x: postsButton.left + (countButtonWidth / 2) - 5,
                               y: nameLabel.bottom + 24,
                               width: countButtonWidth,
                               height: numHeight).integral
        
        followerNum.frame = CGRect(x: followersButton.left + (countButtonWidth / 2) - 15,
                                   y: nameLabel.bottom + 24,
                                   width: countButtonWidth,
                                   height: numHeight).integral
        
        followingNum.frame = CGRect(x: followingButton.left + (countButtonWidth / 2) - 15,
                                   y: nameLabel.bottom + 24,
                                   width: countButtonWidth,
                                   height: numHeight).integral

        editProfileButton.frame = CGRect(x: 24,
                                         y: postsButton.bottom + 24,
                                         width: width - 48 - 42 - 8,
                                         height: 36).integral
        
        listButton.frame = CGRect(x: editProfileButton.right + 8,
                                  y: postsButton.bottom + 24,
                                  width: 42,
                                  height: 36).integral

        let bioLabelSize = bioLabel.sizeThatFits(frame.size)

        bioTitle.frame = CGRect(x: 24,
                                y: editProfileButton.bottom + 24,
                                width: width - 100,
                                height: 18).integral
        
        bioLabel.frame = CGRect(x: 24,
                                y: bioTitle.bottom + 8,
                                width: width - 48,
                                height: bioLabelSize.height).integral
    
    
    
    }
    
    // MARK: - Actions
    
    @objc private func didTapFollowerButton() {
        delegate?.profileHeaderDidTapFollowersButton(self)
    }
    
    @objc private func didTapFollowingButton() {
        delegate?.profileHeaderDidTapFollowingButton(self)
    }
    
    @objc private func didTapPostsButton() {
        delegate?.profileHeaderDidTapPostsButton(self)
    }
    
    @objc private func didTapEditProfileButton() {
        delegate?.profileHeaderDidTapEditProfileButton(self)
    }
    
    @objc private func didTapListButton() {
        delegate?.profileHeaderDidTapEditProfileButton(self)
    }
}
