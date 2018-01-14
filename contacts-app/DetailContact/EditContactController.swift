//
//  EditContactController.swift
//  contacts-app
//
//  Created by Arthur on 14/01/2018.
//  Copyright © 2018 stoicdev. All rights reserved.
//

import LBTAComponents
//import SwiftyJSON

class EditContactController: DatasourceController {
    
    var contact: Contact? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .lightGray
        
        self.datasource = EditContactDatasource()
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}