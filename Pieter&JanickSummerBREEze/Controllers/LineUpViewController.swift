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

    
    // section headers lay-out
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let rect = CGRect.init(x: 0, y: 0, width: 640, height: 25)
        let view:UITextView = UITextView.init(frame: rect)
        let font:UIFont = UIFont.init(name: "Helvetica", size: 20)!
        
        view.backgroundColor = UIColor.black
        view.textColor = UIColor.white
        view.font = font
        view.text = myDAO.data[section].name
        return view
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
    //segue naar band info page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! BandInfoViewController
        let touchedCell = LineUpTableView.indexPathForSelectedRow
        let band = myDAO.data[touchedCell!.section].bandLijst[touchedCell!.row]
        
        destination.sendBand = band
       
    }

}
