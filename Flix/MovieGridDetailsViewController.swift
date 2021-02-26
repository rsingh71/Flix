//
//  MovieGridDetailsViewController.swift
//  Flix
//
//  Created by Rudransh Singh on 2/22/21.
//

import UIKit
import AlamofireImage
class MovieGridDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdrop: UIImageView!
    
    @IBOutlet weak var posterview: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie : [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        // Do any additional setup after loading the view.
        
        let baseurl = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseurl + posterPath)
        posterview.af_setImage(withURL: posterURL!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: baseurl + backdropPath)
        backdrop.af_setImage(withURL: backdropURL!)
        
        
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
