//
//  SourceXib.swift
//  SourceXib
//
//  Created by user1 on 2023/11/27.
//

import Foundation
import UIKit

class SourceXib: UIView {
    @IBOutlet weak var sampleLabel: UILabel!

    /// コードから初期化
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    /// Storyboard / xib から初期化
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }

    /// xibファイルをロードして紐付け
    private func loadNib() {
        guard let view = UINib(nibName: "SourceXib",
                               bundle: nil).instantiate(withOwner: self,
                                                        options: nil).first as? UIView else {
            return
        }
        view.frame = bounds
        addSubview(view)
    }
}
