//
//  BandInfoViewController.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 01/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import UIKit

class BandInfoViewController: UIViewController {
    @IBOutlet weak var lblBandName: UILabel!
    @IBOutlet weak var lblTimeStamps: UILabel!
    @IBOutlet weak var tfAbout: UITextView!
    @IBOutlet weak var imgViewBand: UIImageView!
    @IBOutlet weak var btnYoutubeLink: UIButton!
    var sendBand : Band?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let band = sendBand{
            
            lblBandName.text = band.name
            lblTimeStamps.text = band.time
            tfAbout.text = band.about
            imgViewBand.image = UIImage.init(named: band.img)
            
        }
    }
    
    @IBAction func goToYoutube(_ sender: Any) {
        UIApplication.shared.open(sendBand!.youtubeURL, options: [:], completionHandler: nil)
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
