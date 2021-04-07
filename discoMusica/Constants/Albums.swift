//
//  Albums.swift
//  discoMusica
//
//  Created by Alejandro García on 7/4/21.
//  Copyright © 2021 Alejandro García. All rights reserved.
//

import Foundation
import UIKit

class Albums{
    
    let albumsList:[Album]
    
    private init() {
        
        //Frases que apareceran en login de forma aleatoria
        self.albumsList = [Album(bandName: "AC/DC", coverPic: #imageLiteral(resourceName: "acdc"), link: URL(string: "https://www.youtube.com/watch?v=gEPmA3USJdI")!), Album(bandName: "Metallica", coverPic: #imageLiteral(resourceName: "metallica"),  link: URL(string: "https://www.youtube.com/watch?v=tAGnKpE4NCI")!), Album(bandName: "M.O.D.A", coverPic: #imageLiteral(resourceName: "moda"),  link: URL(string: "https://www.youtube.com/watch?v=6MS3Sp2A9cU")!), Album(bandName: "Pantera", coverPic: #imageLiteral(resourceName: "pantera"),  link: URL(string: "https://www.youtube.com/watch?v=RVMvART9kb8")!), Album(bandName: "Desakato", coverPic: #imageLiteral(resourceName: "desakato"),  link: URL(string: "https://www.youtube.com/watch?v=1wG96Jt0PXQ")!)]
    }
    
    static let shared = Albums()
    
}
