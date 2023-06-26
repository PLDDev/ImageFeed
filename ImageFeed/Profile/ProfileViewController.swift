import UIKit

final class ProfileViewController: UIViewController {
    
    //MARK: - UIKit Elements
    
    private let avatarImageView: UIImageView = {
        let avatarImageView = UIImageView()
        avatarImageView.image = UIImage(named: "avatar")
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        return avatarImageView
    }()
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        nameLabel.textColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 1, alpha: 1)
        return nameLabel
    }()
    private let loginNameLabel: UILabel = {
        let loginNameLabel = UILabel()
        loginNameLabel.text = "@ekaterina_nov"
        loginNameLabel.font = UIFont.systemFont(ofSize: 13)
        loginNameLabel.textColor = #colorLiteral(red: 0.7369984984, green: 0.7409694791, blue: 0.7575188279, alpha: 1)
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return loginNameLabel
    }()
    private var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Hello, World!"
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.textColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 1, alpha: 1)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        return descriptionLabel
    }()
    private var logoutButton: UIButton = {
        let logoutButton = UIButton()
        logoutButton.setImage(UIImage(named: "logout_button"), for: .normal)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        return logoutButton
    }()
    
    override func viewDidLoad() {
        addSubViews()
        applyConstraints()
    }
    
    //MARK: - AutoLayout
    
    private func addSubViews() {
        view.addSubview(avatarImageView)
        view.addSubview(nameLabel)
        view.addSubview(loginNameLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(logoutButton)
    }
    
    private func applyConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.widthAnchor.constraint(equalToConstant: 70),
            avatarImageView.heightAnchor.constraint(equalToConstant: 70),
            avatarImageView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            avatarImageView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            loginNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            logoutButton.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
}
