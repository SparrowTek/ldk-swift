
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// A dynamically-allocated array of crate::c_types::derived::C2Tuple_TxidBlockHashZs of arbitrary size.
			/// This corresponds to std::vector in C++
			internal typealias Vec_C2Tuple_TxidBlockHashZZ = Bindings.Vec_C2Tuple_TxidBlockHashZZ

			extension Bindings {

				/// A dynamically-allocated array of crate::c_types::derived::C2Tuple_TxidBlockHashZs of arbitrary size.
				/// This corresponds to std::vector in C++
				internal class Vec_C2Tuple_TxidBlockHashZZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCVec_C2Tuple_TxidBlockHashZZ?

					internal init(cType: LDKCVec_C2Tuple_TxidBlockHashZZ, instantiationContext: String) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
					}

					internal init(cType: LDKCVec_C2Tuple_TxidBlockHashZZ, instantiationContext: String, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					internal init(array: [([UInt8], [UInt8])]) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						super.init(conflictAvoidingVariableName: 0, instantiationContext: "Vec_C2Tuple_TxidBlockHashZZ.swift::\(#function):\(#line)")

						
						let rustArray = array.map { (currentValueDepth1: ([UInt8], [UInt8])) -> LDKC2Tuple_TxidBlockHashZ in
							
						let currentValueDepth1Tuple = Tuple_TxidBlockHashZ(tuple: currentValueDepth1).danglingClone()
				
							return currentValueDepth1Tuple.cType!
						}
				

						

						let dataContainer = UnsafeMutablePointer<LDKC2Tuple_TxidBlockHashZ>.allocate(capacity: array.count)
						dataContainer.initialize(from: rustArray, count: array.count)

        				let vector = LDKCVec_C2Tuple_TxidBlockHashZZ(data: dataContainer, datalen: UInt(array.count))
        				self.cType = vector
					}

					public func getValue() -> [([UInt8], [UInt8])] {

						var array = [LDKC2Tuple_TxidBlockHashZ]()

						
						for index1 in 0..<Int(self.cType!.datalen) {
							let currentEntry1 = self.cType!.data[index1]
							array.append(currentEntry1)
						}
		

						let swiftArray = array.map { (currentCType: LDKC2Tuple_TxidBlockHashZ) -> ([UInt8], [UInt8]) in
Tuple_TxidBlockHashZ(cType: currentCType, instantiationContext: "Vec_C2Tuple_TxidBlockHashZZ.swift::\(#function):\(#line)").dangle().getValue()
						}
						return swiftArray
					}

					
					/// Frees the buffer pointed to by `data` if `datalen` is non-0.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CVec_C2Tuple_TxidBlockHashZZ_free(self.cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		

					internal func dangle(_ shouldDangle: Bool = true) -> Vec_C2Tuple_TxidBlockHashZZ {
        				self.dangling = shouldDangle
						return self
					}

					
					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing Vec_C2Tuple_TxidBlockHashZZ \(self.instanceNumber).")
							
							self.free()
						} else {
							Bindings.print("Not freeing Vec_C2Tuple_TxidBlockHashZZ \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

			}
		