//
//  WeatherViewController.swift
//  SymbolWeather
//
//  Created by JuSun Kang on 2022/06/10.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBAction func changeButtonTapped(_ sender: UIButton) {
        cityLabel.text = cities.randomElement()
        weatherImageView.image = UIImage(systemName: weathers.randomElement()!)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
        
        print("도시, 온도, 날씨 이미지 변경하자!!")
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
