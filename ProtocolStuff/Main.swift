//
//  Main.swift
//  ProtocolStuff
//
//  Created by Noah Emmet on 2/23/15.
//  Copyright (c) 2015 Sticks. All rights reserved.
//

import Foundation

protocol SomeProtocolType: Equatable {
	var someInt: Int { get }		// A stub to allow Equatable check
	func foo(arg: Self)
}

struct SomeStructType: SomeProtocolType {
	var someInt: Int { return 0 }
	func foo(arg: SomeStructType) {
		
	}
}

func ==(lhs: SomeStructType, rhs: SomeStructType) -> Bool {
	return lhs.someInt == rhs.someInt
}

struct SomeStruct {
	var someProtocolTypes: [SomeProtocolType]
}