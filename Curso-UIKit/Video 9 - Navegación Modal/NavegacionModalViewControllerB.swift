import UIKit

class NavegacionModalViewControllerB: UIViewController {
    
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss View Controller B"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dimissViewControllerB()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller C"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(dismissButton)
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.bottomAnchor.constraint(equalTo: dismissButton.topAnchor, constant: -32),
        ])
    }
    
    func dimissViewControllerB() {
        self.dismiss(animated: true)
        
//        self.dismiss(animated: true) {
//            print("View Controller B has been dismissed")
//        }
    }
    
    func startNavigation() {
        self.present(NavegacionModalViewControllerC(), animated: true)
    }
}
