import UIKit

class NavegacionModalViewControllerA: UIViewController {
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller A"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        title = "Navegación Modal"
        
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    func startNavigation() {
        self.present(NavegacionModalViewControllerB(), animated: true)
    }
}
