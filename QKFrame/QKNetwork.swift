//
//  QKNetwork.swift
//  QKFrame
//
//  Created by Jiang, Xinxing on 16/5/8.
//  Copyright © 2016年 Jiang, Star. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class QKNetwork {
    class func getJSON(url: String, parameters: [String: AnyObject]?, onSuccess:(json:JSON)->Void, onError: (error: NSError)->Void) {
        Alamofire.request(.GET, url, parameters: parameters)
            .responseJSON { response in
                
                switch response.result {
                case .Success(let value):
                    onSuccess(json: JSON(value))
                case .Failure(let error):
                    onError(error: error)
                }
                
        }
    }
}