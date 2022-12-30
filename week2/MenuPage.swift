//
//  NavigationController.swift
//  week2
//
//  Created by BAE on 2022/12/31.
//

import UIKit

class MenuPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationLeftItem()
        
    }
    
    func setNavigationLeftItem(){
        let image = UIImage(named: "menu_navi_item.png")
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        let leftBarBtn = UIBarButtonItem(customView: imageView)
        
        let test = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(moveback(_:)))
        
        test.tintColor = .brown
        
        self.navigationItem.leftBarButtonItem = test
    }
    
    @IBAction func moveback(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
}
