//
//  DataStore.swift
//  WebView_LAB17
//
//  Created by 장여훈 on 2023/08/03.
//

import Foundation

class DataStore: ObservableObject {
    @Published var datas: [Data] = []
    
    init() {
        datas = [
            Data(siteName: "Apple", url: "https://developer.apple.com"),
            Data(siteName: "Samsung", url: "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwjQ1_jH-b-AAxV6ag8CHWM9A5AYABAAGgJ0Yg&ae=2&ohost=www.google.com&cid=CAESaeD2yzSK6a9mh5b9oHR2MXFbtJjLJVzRriks9n04eYW66cW01zbiQrsM6kmSF3-gkCD4cQuYI17FfWNSz8fpz7dHDteN7BA_WijB3SFj91rQrqgKZ7j1mdwtvUXDAysykKlvxzObSwKFPw&sig=AOD64_0FwuJTWmm-3MItaiC59DlsHY02bg&q&adurl&ved=2ahUKEwiJh_HH-b-AAxWiplYBHVkpAVsQ0Qx6BAgFEAE&nis=8&dct=1"),
            Data(siteName: "YouTube", url: "https://www.youtube.com/")
        ]
    }
    func addData(siteName: String, url: String) {
        let data = Data(siteName: siteName, url: url)
        datas.append(data)
    }
}
