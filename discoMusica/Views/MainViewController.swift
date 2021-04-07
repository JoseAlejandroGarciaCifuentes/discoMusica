//
//  ViewController.swift
//  discoMusica
//
//  Created by Alejandro García on 7/4/21.
//  Copyright © 2021 Alejandro García. All rights reserved.
//

import UIKit
import SafariServices

class MainViewController: UIViewController {
    
    let likedImage:UIImage = UIImage(systemName: "heart.fill")!
    let unlikedImage:UIImage = UIImage(systemName: "heart.slash.fill")!
    let albums:[Album] = Albums.shared.albumsList
    var currentAlbum:Int = 0
    var maxAlbumsSize:Int?
    
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var albumPicIV: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxAlbumsSize = albums.count - 1
    }

    @IBAction func onClickPrevious(_ sender: UIButton) {
        if currentAlbum > 0{
            currentAlbum -= 1
        }else{
            currentAlbum = maxAlbumsSize!
        }
        setDiskDetails()
    }
    
    @IBAction func onClickLink(_ sender: UIButton) {
    }
    
    @IBAction func onClickLike(_ sender: UIButton) {
        
        if albums[currentAlbum].isLiked {
            sender.setBackgroundImage(likedImage, for: .normal)
            albums[currentAlbum].isLiked = false
        }else{
            sender.setBackgroundImage(unlikedImage, for: .normal)
            albums[currentAlbum].isLiked = true
        }
    }
    
    @IBAction func onClickNext(_ sender: UIButton) {
        if currentAlbum < maxAlbumsSize!{
            currentAlbum += 1
        }else{
            currentAlbum = 0
        }
        setDiskDetails()
    }
    
    func setDiskDetails(){
        
        albumNameLabel.text = albums[currentAlbum].bandName
        albumPicIV.image = albums[currentAlbum].coverPic
        
        if  albums[currentAlbum].isLiked{
            likeButton.setBackgroundImage(unlikedImage, for: .normal)
        }else{
            likeButton.setBackgroundImage(likedImage, for: .normal)
        }
    }
}

