//
//  ImageListCell.swift
//  ImageFeed
//
//  Created by DANCECOMMANDER on 01.06.2023.
//

import Foundation

import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
}
