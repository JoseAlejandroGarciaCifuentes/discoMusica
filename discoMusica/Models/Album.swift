//
//  Album.swift
//  discoMusica
//
//  Created by Alejandro García on 7/4/21.
//  Copyright © 2021 Alejandro García. All rights reserved.
//

import Foundation;
import UIKit;

class Album{
    
    private let _bandName:String
    private var _isLiked:Bool
    private let _coverPic:UIImage
    private let _link:URL
    
    init(bandName:String, coverPic:UIImage, link:URL){
        
        self._bandName = bandName
        self._isLiked = false
        self._coverPic = coverPic
        self._link = link
    }
    
    public var bandName: String {
        get {
            return self._bandName;
        }
    }
    
    public var isLiked: Bool {
        get {
            return self._isLiked;
        }
        set{
            self._isLiked = newValue
        }
    }
    
    public var coverPic: UIImage {
        get {
            return self._coverPic;
        }
    }
    
    public var link: URL {
        get {
            return self._link;
        }
    }
}
