//
//  ViewController.swift
//  week2
//
//  Created by BAE on 2022/12/27.
//

import UIKit

class ViewController: UIViewController {
    // 페이지 인덱스
    var nowPage: Int = 0
    // 이미지 데이터 배열
    let dataArray: Array<UIImage> = [UIImage(named: "burgerking_banner_1.png")!,UIImage(named: "burgerking_banner_2.png")!, UIImage(named: "burgerking_banner_3.png")!, UIImage(named: "burgerking_banner_1.png")!]
    
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var orderStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        bannerCollectionView.isScrollEnabled = false
        bannerTimer()
        setLabelSpacing()
    }
    // 2초 간격으로 자동 스크롤
    func bannerTimer(){
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true){
            (Timer) in self.bannerMove()
        }
    }
    
    // nowPage에 따라 스크롤 동작
    func bannerMove(){
        nowPage += 1
        bannerCollectionView.scrollToItem(at: NSIndexPath(item: nowPage, section: 0) as IndexPath, at: .right, animated: true)
        
        if nowPage == dataArray.count-1 {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
                self.scrolltoFirstIndex()
            }
            return
        }
    }
    
    //
    func scrolltoFirstIndex(){
        bannerCollectionView.scrollToItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, at: .right, animated: false)
        nowPage = 0
        
    }
    
    func setLabelSpacing(){
        mainStackView.setCustomSpacing(30, after: orderStackView)
        mainStackView.setCustomSpacing(5, after: lbl1)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    // 컬렉션 뷰의 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataArray.count
    }
    
    // 컬렉션 뷰 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
        cell.imgView.image = dataArray[indexPath.row]
        
        cell.contentView.layer.cornerRadius = 10
        
        return cell
    }
    
    // UICollectionViewDelegateFlowLayout 상속
    // 컬렉션뷰 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        return CGSize(width: bannerCollectionView.frame.size.width, height: bannerCollectionView.frame.size.height)
    }
    
    // 컬렉션 뷰 내부 마진
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//    }
    
    // 컬렉션뷰 감속 끝났을 때 현재 페이지 체크
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
//
//        switch nowPage{
//        case 0:
//            let last = dataArray.count-2
//            self.bannerCollectionView.scrollToItem(at: [0, last], at: .left, animated: false)
//        case dataArray.count-1:
//            self.bannerCollectionView.scrollToItem(at: [0,1], at: .left, animated: false)
//        default:
//            break
//        }
//    }
    
}
