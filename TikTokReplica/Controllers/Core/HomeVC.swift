//
//  ViewController.swift
//  TikTokReplica
//
//  Created by Felix Alexander Sotelo Quezada on 08-07-21.
//

import UIKit

class HomeVC: UIViewController {
    private let horizontalScroll : UIScrollView = {
        let scrollView                              = UIScrollView()
        scrollView.backgroundColor                  = .red
        scrollView.bounces                          = false
        scrollView.isPagingEnabled                  = true
        scrollView.showsHorizontalScrollIndicator   = false
        
        return scrollView
    }()
    let forYouPaging = UIPageViewController(
        transitionStyle: .scroll,
        navigationOrientation: .vertical,
        options: [:])
    let forFollwingPaging = UIPageViewController(
        transitionStyle: .scroll,
        navigationOrientation: .vertical,
        options: [:])

//    MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(horizontalScroll)
        setUpFeed()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        horizontalScroll.frame = view.bounds
    }


}

private extension HomeVC {
    func setUpFeed()  {
        horizontalScroll.contentSize = CGSize(width: view.width * 2, height: view.height)
        setUpFollowingFeed()
        setUpForYouFeed()
        
    }
    func setUpFollowingFeed()  {
        let mockVC = UIViewController()
        mockVC.view.backgroundColor = .blue
        forFollwingPaging.setViewControllers(
            [mockVC],
            direction: .forward,
            animated: false,
            completion: nil)
        
        forFollwingPaging.dataSource = self
        horizontalScroll.addSubview(forFollwingPaging.view)
        forFollwingPaging.view.frame = CGRect(x: 0, y: 0, width: horizontalScroll.width, height: horizontalScroll.height)
        addChild(forFollwingPaging)
        forFollwingPaging.didMove(toParent: self)
    }
    
    func setUpForYouFeed() {
        
        let mockVC = UIViewController()
        mockVC.view.backgroundColor = .blue
        forYouPaging.setViewControllers(
            [mockVC],
            direction: .forward,
            animated: false,
            completion: nil)
        
        forYouPaging.dataSource = self
        horizontalScroll.addSubview(forYouPaging.view)
        forYouPaging.view.frame = CGRect(x: view.width, y: 0, width: horizontalScroll.width, height:horizontalScroll.height )
        addChild(forYouPaging)
        forYouPaging.didMove(toParent: self)
    }
}
extension HomeVC: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let mockVC2 = UIViewController()
        mockVC2.view.backgroundColor = [UIColor.red, UIColor.green, UIColor.cyan].randomElement()
        return mockVC2
    }
    
    
}

