//
//  ViewController.swift
//  lottie-practice
//
//  Created by Kevin Wang on 11/2/18.
//  Copyright © 2018 Kevin Wang. All rights reserved.
//

import UIKit
import Lottie
import Alamofire
import SnapKit

class ViewController: UIViewController {
  var webURL: URL!
  var animationView: LOTAnimationView!

  override func viewDidLoad() {
    super.viewDidLoad()
    let fileURL = Bundle.main.path(forResource: "heart", ofType: "json")
    webURL = URL(string: "https://www.lottiefiles.com/storage/datafiles/RCNn6rnkYkbg0RI/data.json")

//    animationView = LOTAnimationView(contentsOf: webURL)
    if let heart = fileURL {
      animationView = LOTAnimationView(filePath: heart)
    }
    view.backgroundColor = .white
    view.addSubview(animationView)

    animationView.isUserInteractionEnabled = true
    let tap = UITapGestureRecognizer(target: self, action: #selector(tapHeart))
    animationView.addGestureRecognizer(tap)
    animationView.snp.makeConstraints { make in
      make.center.equalTo(view)
      make.size.equalTo(300)
    }
//    animationView.loopAnimation = true
//    animationView.play()
  }

  @objc func tapHeart() {
    guard animationView.animationProgress != 1 else {
      self.animationView.play(fromProgress: 1, toProgress: 0, withCompletion: nil)
      return
    }
    self.animationView.play()
  }
}

