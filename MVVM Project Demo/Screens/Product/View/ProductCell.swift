//
//  ProductCell.swift
//  MVVM Project Demo
//
//  Created by Fahad on 02/05/2024.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var productBackgroundView: UIView!
    @IBOutlet weak var productTitleLable: UILabel!
    @IBOutlet weak var productCategoryLable: UILabel!
    @IBOutlet weak var rateBtn: UIButton!
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    
    var product : Product? {
        
        didSet {              // Property Observer
            productDetailConfiguration()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productBackgroundView.clipsToBounds = false
        productBackgroundView.layer.cornerRadius = 15
        
        productImage.layer.cornerRadius = 10
        self.productBackgroundView.backgroundColor = .systemGray6

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func productDetailConfiguration(){
        guard let product else { return }
        productTitleLable.text = product.title
        productCategoryLable.text = product.category
        descriptionLable.text = product.description
        priceLable.text = "&\(product.price)"
        rateBtn.setTitle(("\(product.rating.rate)"), for: .normal)
        productImage.setImage(with: product.image)
    }
    
}
