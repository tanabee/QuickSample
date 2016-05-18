//
//  QuickSampleTests.swift
//  QuickSampleTests
//
//  Created by 田邉　裕貴 on 2016/04/06.
//  Copyright © 2016年 田邉　裕貴. All rights reserved.
//


import Quick
import Nimble
@testable import QuickSample

class CounterSpec: QuickSpec {
    override func spec() {
        let counter = Counter()
        describe("Counter クラスのテスト") {
            beforeSuite({
                counter.reset()
            })
            context("初期状態", closure: {
                it("getCount() で 0 が返るべき", closure: {
                    expect(counter.getCount()).to(equal(0))
                })
            })
            context("1回カウントアップ後", closure: {
                it("getCount() で 1 が返るべき", closure: {
                    expect(counter.getCount()).to(equal(1))
                })
            })
            context("2回カウントアップ後", closure: {
                it("getCount() で 2 が返るべき", closure: {
                    expect(counter.getCount()).to(equal(2))
                })
            })
            context("リセット", closure: {
                it("リセット直後は getCount() で 0 が返るべき", closure: {
                    counter.reset()
                    expect(counter.getCount()).to(equal(0))
                })
            })
            afterEach({
                counter.countUp()
            })
            afterSuite({
                counter.reset()
            })
        }
    }
}