//
//  ViewController.swift
//  WelldevTraining Project15
//
//  Created by Md. Kamrul Hasan on 6/8/25.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        view.addSubview(imageView)
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [],
                       animations: {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                
            case 1:
                self.imageView.transform = .identity
                
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
                
            case 3:
                self.imageView.transform = .identity
                
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                
            case 5:
                self.imageView.transform = .identity
                
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = UIColor.green
                
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = UIColor.clear
                
            case 8:
                self.imageView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                
            case 9:
                self.imageView.transform = .identity
                
            case 10:
                self.imageView.transform = CGAffineTransform(translationX: 256, y: 256)
                
            case 11:
                self.imageView.transform = .identity
                
            case 12:
                self.imageView.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
                
            case 13:
                self.imageView.transform = .identity
                
            default:
                break
            }
        }) { finished in
            sender.isHidden = false
        }
        
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
}

