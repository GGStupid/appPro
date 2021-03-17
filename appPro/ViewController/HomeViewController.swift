//
//  HomeViewController.swift
//  appPro
//
//  Created by bob_lv on 2021/3/16.
//

import UIKit

class HomeViewController: baseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = "首页"
        let backBarItem = UIBarButtonItem()
        backBarItem.title="上一步"
        navigationItem.backBarButtonItem=backBarItem
        
//        hidesBottomBarWhenPushed = true
        
        
        
        let label = UILabel(frame: CGRect.zero)
        label.text = "home"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap)))
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func tap(){
        navigationController?.pushViewController(ViewController(),animated: true
        )
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
