//
//  ViewController.swift
//  CodingTest
//
//  Created by HAU NGUYEN on 6/6/25.
//  Copyright © 2025 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vpnButton: UIView!
    @IBOutlet weak var browsingButton: UIView!
    @IBOutlet weak var idProtectionButton: UIView!
    
    @IBOutlet weak var vaultButton: UIView!
    @IBOutlet weak var wifiSecurityButton: UIView!
    @IBOutlet weak var callBlockerButton: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goToTopStories(_ sender: Any) {
    }
}

extension ViewController {
    private func setupUI() {
        let vpnButtonModel = self.createButton(title: "VPN", action: { [weak self] in
            guard let self = self else { return }
            // Handle VPN button action here
            print("VPN button tapped")
        })
        vpnButton.addSubview(vpnButtonModel)
        vpnButtonModel.allEdges()
        
        let safeBrowsingButtonModel = self.createButton(title: "Safe Browsing", action: { [weak self] in
            guard let self = self else { return }
            // Handle VPN button action here
            print("Safe Browsing button tapped")
        })
        browsingButton.addSubview(safeBrowsingButtonModel)
        safeBrowsingButtonModel.allEdges()
        
        let idProtectionButtonModel = self.createButton(title: "ID Protection", action: {
            // Handle VPN button action here
            print("ID Protection button tapped")
        })
        idProtectionButton.addSubview(idProtectionButtonModel)
        idProtectionButtonModel.allEdges()
    }
    
    private func createButton(title: String, action: @escaping () -> Void) -> UIView {
        let model = ButtonVM {
            $0.title = title
            $0.color = .warning
            $0.isFullWidth = false
            $0.size = .small
            $0.title = ""
            $0.isLoading = true
            $0.loadingVM = LoadingVM {
                $0.color = .success
            }
        }
        let button = UKButton(model: model, action: action)
        return button
    }
}
