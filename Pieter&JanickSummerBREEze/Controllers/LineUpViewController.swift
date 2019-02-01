//
//  LineUpViewController.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 01/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import UIKit

class LineUpViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var LineUpTableView: UITableView!
    let myDAO = DAO.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myDAO.data[section].name
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myDAO.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDAO.data[section].bandLijst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! LineUpTableViewCell
        
        let band:Band = myDAO.data[indexPath.section].bandLijst[indexPath.row]
        
        
        cell.lblTimeStamps.text = band.time
        cell.lblBandName.text = band.name
        cell.imgViewBand.image = UIImage.init(named: band.img)
        
        return cell
    }

}
