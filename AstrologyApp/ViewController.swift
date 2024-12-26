//
//  ViewController.swift
//  AstrologyApp
//
//  Created by Vladimir on 23/12/24.
//

import UIKit

class ViewController: UIViewController {
    private lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()

    private lazy var mainStack: UIView = {
        let element = UIView()
        element.backgroundColor = .white
        element.layer.cornerRadius = 10
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    private lazy var nameLabel: UILabel  = {
        let element = UILabel()
        element.text = "Борис"
        element.textAlignment = .center
        element.font = .systemFont(ofSize: 16)
        element.textColor = UIColor(red: 0.73, green: 0.44, blue: 0.44, alpha: 1)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    private lazy var favoritesButton: UIButton  = {
        let element = UIButton()
        element.setImage(UIImage(systemName: "heart"), for: .normal)
        element.tintColor = UIColor(red: 0.73, green: 0.44, blue: 0.44, alpha: 1)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    private lazy var closeButton: UIButton  = {
        let element = UIButton()
        element.setImage(UIImage(systemName: "xmark"), for: .normal)
        element.tintColor = UIColor(red: 0.73, green: 0.44, blue: 0.44, alpha: 1)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    private lazy var imageView: UIImageView  = {
        let element = UIImageView()
        element.image = .vector
        
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(mainStack)
        mainStack.addSubview(nameLabel)
        mainStack.addSubview(favoritesButton)
        mainStack.addSubview(closeButton)
        mainStack.addSubview(imageView)
        mainStack.makeShadow()
        setupUI()
        view.backgroundColor = .white

    }
    private func setupUI() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            mainStack.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            mainStack.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            mainStack.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            mainStack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16),
            mainStack.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32),
            mainStack.heightAnchor.constraint(equalToConstant: 2000),
            
            nameLabel.topAnchor.constraint(equalTo: mainStack.topAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: mainStack.centerXAnchor),
            
            favoritesButton.topAnchor.constraint(equalTo: mainStack.topAnchor, constant: 16),
            favoritesButton.leadingAnchor.constraint(equalTo: mainStack.leadingAnchor, constant: 25),
            closeButton.topAnchor.constraint(equalTo: mainStack.topAnchor, constant: 16),
            closeButton.trailingAnchor.constraint(equalTo: mainStack.trailingAnchor, constant: -25),
            
            imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: mainStack.centerXAnchor)
        ])
    }
        
        
    }
extension UIView {
    func makeShadow() {
        self.layer.shadowColor = UIColor(red: 0.73, green: 0.44, blue: 0.44, alpha: 1).cgColor
        self.layer.shadowOpacity = 0.4
        self.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.layer.shadowRadius = 10
    }
    
}



#Preview {
    ViewController()
}

