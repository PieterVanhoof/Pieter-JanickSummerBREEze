//
//  ViewController.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 31/01/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var updatesList = [Updates]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = Updates.init(title: "Weather", content: "The weather forecasts: Lot's of rays!")
        let traffic = Updates.init(title: "Traffic", content: "Heavy traffic from Brussels to Nieuwpoort")
        let LineUp = Updates.init(title: "line-up change", content: "Mayham has cancelled")
        
        updatesList = [weather, traffic, LineUp]
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return updatesList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
            let updates:Updates = updatesList[indexPath.row]
            
            cell.textLabel!.text = updates.title
            cell.textLabel!.text = updates.content
            
            return cell
            

}
}

