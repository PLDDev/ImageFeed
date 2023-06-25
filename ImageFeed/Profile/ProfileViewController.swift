import UIKit

final class ProfileViewController: UIViewController {
    
    private var avatarImageView = UIImageView()
    private var nameLabel = UILabel()
    private var loginNameLabel = UILabel()
    private var descriptionLabel = UILabel()
    private var logoutButton = UIButton()
        
    override func viewDidLoad() {
        configureAvatarImageView()
        configureNameLabel()
        configureLoginNameLabel()
        configureDescriptionLabel()
        configureLogoutButton()
    }
    
    //MARK: - AutoLayout
    
    private func configureAvatarImageView() {
        view.addSubview(avatarImageView)
        avatarImageView.image = UIImage(named: "avatar")
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            avatarImageView.widthAnchor.constraint(equalToConstant: 70),
            avatarImageView.heightAnchor.constraint(equalToConstant: 70),
            avatarImageView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            avatarImageView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
    }
    
    private func configureNameLabel() {
        view.addSubview(nameLabel)
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        nameLabel.textColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 1, alpha: 1)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor)
        ])
    }
    
    private func configureLoginNameLabel() {
        view.addSubview(loginNameLabel)
        loginNameLabel.text = "@ekaterina_nov"
        loginNameLabel.font = UIFont.systemFont(ofSize: 13)
        loginNameLabel.textColor = #colorLiteral(red: 0.7369984984, green: 0.7409694791, blue: 0.7575188279, alpha: 1)
        
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            loginNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor)
        ])
    }
    
    private func configureDescriptionLabel() {
        view.addSubview(descriptionLabel)
        descriptionLabel.text = "Hello, World!"
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.textColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 1, alpha: 1)
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor)
        ])
    }
    
    private func configureLogoutButton() {
        view.addSubview(logoutButton)
        logoutButton.setImage(UIImage(named: "logout_button"), for: .normal)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            logoutButton.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
}
