// The MIT License (MIT)
//
// Copyright (c) 2017-2018 litt1e-p ( https://github.com/litt1e-p )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import UIKit

struct RandomUsername
{
    private static let firstNames = ["李", "王", "张", "刘", "陈", "杨", "赵", "黄", "周", "吴", "徐", "孙", "胡", "朱", "高", "林", "何", "郭", "马", "罗", "梁", "宋", "郑", "谢", "韩", "唐", "冯", "于", "董", "萧", "程", "曹", "袁", "邓", "许", "傅", "沈", "曾", "彭", "吕", "苏", "卢", "蒋", "蔡", "贾", "丁", "魏", "薛", "叶", "阎", "余", "潘", "杜", "戴", "夏", "锺", "汪", "田", "任", "姜", "范", "方", "石", "姚", "谭", "廖", "邹", "熊", "金", "陆", "郝", "孔", "白", "崔", "康", "毛", "邱", "秦", "江", "史", "顾", "侯", "邵", "孟", "龙", "万", "段", "雷", "钱", "汤", "尹", "黎", "易", "常", "武", "乔", "贺", "赖", "龚", "文", "Sarah", "wang", "Lee", "wu", "paul", "alex", "candy", "🐻", "🎈", "😊", "🌞", "🎀", "✨"]
    
    private static let doubleNamesForThree = ["静静", "婷婷", "园园", "明明", "冰冰", "莎莎", "乐乐", "晶晶", "诗诗", "倩倩", "菲菲"];
    
    private static let secondNamesForTwo = ["伟", "强", "华", "志", "建", "立", "超", "荣", "文", "达", "敏", "江", "晖", "刚", "雷", "磊", "春", "夏", "哲", "东", "冬", "楠", "昊", "宇", "慧", "瑶", "翔", "星", "燕", "迪", "钰", "俊", "怡", "雪", "佳", "杰", "芮", "可", "涵", "熙", "裕"];
    
    private static let secondNamesForThree = ["小", "明", "国", "万", "梓", "浩", "晓", "德", "力", "世", "秀", "春", "子", "天", "金", "江", "泽", "玉", "紫", "亦", "家", "文", "达", "光", "梦", "永", "成", "婷", "洪", "俊", "恒", "恩", "雅", "轩", "若", "欣", "怡", "一", "常"];
    
    private static let thirdNamesForThree = ["平", "芳", "华", "云", "海", "宣", "盛", "强", "梅", "志", "慧", "博", "敏", "春", "夏", "杰", "宇", "翔", "北", "秋", "东", "新", "瑶", "豪", "星", "燕", "铭", "奇", "康", "鑫", "凯", "雨", "栋", "梁", "瑞", "龙", "宜", "彤", "芮", "逸", "扬", "林"];
    
    private static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UInt32.max))
    }
    
    public static func generate() -> String {
        var randomName = ""
        let twoOrThree = random()
        if twoOrThree > 0.97 {
            let a = Int(floor(pow(random(), 3) * CGFloat(firstNames.count) + 1.0) - 1.0)
            let b = Int(floor(pow(random(), 1.1) * CGFloat(doubleNamesForThree.count) + 1.0) - 1.0)
            randomName = firstNames[a] + doubleNamesForThree[b]
        } else if twoOrThree > 0.6 {
            let m = Int(floor(pow(random(), 3) * CGFloat(firstNames.count) + 1.0) - 1.0)
            let n = Int(floor(pow(random(), 1.5) * CGFloat(secondNamesForTwo.count) + 1.0) - 1.0)
            randomName = firstNames[m] + secondNamesForTwo[n]
        } else {
            let x = Int(floor(pow(random(), 3) * CGFloat(firstNames.count) + 1.0) - 1.0)
            let y = Int(floor(pow(random(), 1.5) * CGFloat(secondNamesForThree.count) + 1.0) - 1.0)
            let z = Int(floor(pow(random(), 1.5) * CGFloat(thirdNamesForThree.count) + 1.0) - 1.0)
            randomName = firstNames[x] + secondNamesForThree[y] + thirdNamesForThree[z]
        }
        return randomName
    }
}
