//
//  FruitsTableViewCell.swift
//  delegateMethodTutorialApp
//
//  Created by anies1212 on 2022/04/21.
//

import UIKit

protocol FruitsTableViewCellDelegate: AnyObject{
    func didTappedFruitsButton(for cell: FruitsTableViewCell)
}

class FruitsTableViewCell: UITableViewCell {
    
    @IBOutlet var fruitsNameLabel: UILabel!
    @IBOutlet var fruitsButton: UIButton!
    weak var delegate: FruitsTableViewCellDelegate?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func tappedCellButton(){
        let currentCell = self
        delegate?.didTappedFruitsButton(for: currentCell)
    }
    
    
}
