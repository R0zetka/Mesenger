//
//  FeedViewControler.swift
//  Messenger
//
//  Created by Denis Kravchenko on 10/11/2018.
//  Copyright © 2018 Denis Kravchenko. All rights reserved.
//

import UIKit




class FeedViewControler: UIViewController,UITableViewDataSource,UIToolbarDelegate{

    private var items : [String] = ["den","vasya","petya"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nibs : Array = Bundle.main.loadNibNamed("FeedItem", owner: self, options: nil)!
        let cell : FeedIteam = nibs[0] as! FeedIteam
        cell.setTitle(titel: items[indexPath.row])
        return cell
    }
    
    
    @IBOutlet weak var feedlist: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
