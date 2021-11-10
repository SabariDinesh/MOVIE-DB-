//
//  OurThemeManager.swift
//  Movie DB 
//
//  Created by sabari-pt4418 on 10/11/21.
//

import Foundation
import ThemePod

class OurThemeManager{
    func mainViewControllerThemeSpecification(for instance: MainViewController){
        instance.use(ThemeProperties.self){
            $0.view.backgroundColor = $1.background
            $0.myCollectionView?.backgroundColor = $1.background
            $0.appTitle.textColor = $1.titleColor
            $0.upcomingFilter.setTitleColor($1.switchColor, for: .normal)
        }
    }
    
    func collectionViewCellThemeSpecification(for instance: CellConfiguration){
        instance.use(ThemeProperties.self){
            $0.titleLable.textColor = $1.text
            $0.voteAverage.textColor = $1.text
            $0.originalLanguage.textColor = $1.text
            $0.contentView.backgroundColor = $1.cell
        }
    }
    
    func movieDetailViewControllerThemeSpecification(for instance: MovieDetailViewController){
        instance.use(ThemeProperties.self){
        $0.label.backgroundColor = $1.MovieDetailViewController
        $0.label.textColor = $1.text
        $0.view.backgroundColor = $1.background
        }
    }
}
