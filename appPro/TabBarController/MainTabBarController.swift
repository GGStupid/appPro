//
//  MainTabBarController.swift
//  appPro
//
//  Created by bob_lv on 2021/3/16.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initTabBar()
    }
    
    func initTabBar() {
    
        let home = CustomNavigationController(rootViewController: HomeViewController())
        home.tabBarItem.title = "首页"
        home.tabBarItem.image = UIImage(named: "home.png")
        
        let category = CustomNavigationController(rootViewController: CartViewController())
        category.tabBarItem.title = "分类"
        category.tabBarItem.image = UIImage(named: "category.png")
        
        let found = CustomNavigationController(rootViewController: FoundViewController())
        found.tabBarItem.title = "发现"
        found.tabBarItem.image = UIImage(named: "found.png")
        
        let cart = CustomNavigationController(rootViewController: CartViewController())
        cart.tabBarItem.title = "购物车"
        cart.tabBarItem.image = UIImage(named: "cart.png")
        
        let mine = CustomNavigationController(rootViewController: MineViewController())
        mine.tabBarItem.title = "我的"
        mine.tabBarItem.image = UIImage(named: "mine.png")
        
        viewControllers = [home, category,found,cart,mine]
        
        setTabBarItemAttributes(bgColor:UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1))
    }
    
    func setTabBarItemAttributes(fountName:String = "Courier",fontSize:CGFloat = 10,normalColor:UIColor = .gray,selectedColor:UIColor = .red,bgColor:UIColor = .white){
        var attibutes: [NSAttributedString.Key:Any] = [.font: UIFont(name:fountName,size: fontSize)!]
        
        attibutes[.foregroundColor]=normalColor
        UITabBarItem.appearance().setTitleTextAttributes(attibutes, for: .normal)
        
        
        attibutes[.foregroundColor]=selectedColor
        UITabBarItem.appearance().setTitleTextAttributes(attibutes, for: .selected)
        
        tabBar.tintColor=selectedColor
        
        tabBar.barTintColor=bgColor
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
