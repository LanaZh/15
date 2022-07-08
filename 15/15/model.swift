//
//  model.swift
//  15
//

import UIKit



struct InfoSetting {
    var image: UIImage
    var name: String
    
 static func moveAlbom() -> [InfoSetting] {
    let first = InfoSetting(image: UIImage(named: "airplane")!,
                        name: "Авиарежим")
    let second = InfoSetting(image: UIImage(named: "wi-fi-good")!,
                        name: "WI-FI")
    let third = InfoSetting(image: UIImage(named: "bluetooth")!,
                        name: "Bluetooth")
    let fouth = InfoSetting(image: UIImage(named: "cellular-network")!,
                        name: "Сотовая связь")
    let five = InfoSetting(image: UIImage(named: "modem")!,
                          name: "Режим модема")
    let six = InfoSetting(image: UIImage(named: "call")!,
                         name: "Уведомления")
     
    return [first, second, third, fouth, five, six]
    }
}


