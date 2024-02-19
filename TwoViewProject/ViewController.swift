//
//  ViewController.swift
//  TwoViewProject
//
//  Created by Влад Руденко on 19.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(greenView)
        self.view.addSubview(redView)
        
        enableConstrainsUI()
    }
    
    //MARK: - UI Elements
    let greenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    //MARK: - UI Constrains
    func enableConstrainsUI() {
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            greenView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            greenView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            
            redView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 16),
            redView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            redView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor),
            ])
    }
    
    
}
