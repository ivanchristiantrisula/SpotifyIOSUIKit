//
//  ViewController.swift
//  SpotifyUIKitTutorial
//
//  Created by Ivan Christian on 02/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(didTapSettings))
        fetchData()
    }
    
    @objc func didTapSettings() {
        let vc = SettingsViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }

    private func fetchData(){
        APICaller.shared.getNewReleases() { result in
            switch result{
            case .success(let model):
                break
            case .failure(let error) : break
            }
        }
        APICaller.shared.getFeaturedPlaylist{result in
            switch result{
            case .success(let model) : break
            case .failure(let error) : break
            }
        }
        
        APICaller.shared.getRecommendedGenres{result in
            switch result{
            case .success(let model) :
                let genres = model.genres
                var seeds = Set<String>()
                while seeds.count < 5 {
                    if let random = genres.randomElement() {
                        seeds.insert(random)
                    }
                    
                }
                
                APICaller.shared.getRecommendations(genres: seeds){result in
                    switch result{
                    case .success(let model) : break
                    case .failure(let error) : break
                    }
                }
            case .failure(let error) : break
            }
        }
        
        
        
        
    }
}

