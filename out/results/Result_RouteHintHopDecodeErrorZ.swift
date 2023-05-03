
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// A CResult_RouteHintHopDecodeErrorZ represents the result of a fallible operation,
			/// containing a crate::lightning::routing::router::RouteHintHop on success and a crate::lightning::ln::msgs::DecodeError on failure.
			/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
			public typealias Result_RouteHintHopDecodeErrorZ = Bindings.Result_RouteHintHopDecodeErrorZ

			extension Bindings {

				/// A CResult_RouteHintHopDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::routing::router::RouteHintHop on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_RouteHintHopDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_RouteHintHopDecodeErrorZ?

					internal init(cType: LDKCResult_RouteHintHopDecodeErrorZ, instantiationContext: String) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
					}

					internal init(cType: LDKCResult_RouteHintHopDecodeErrorZ, instantiationContext: String, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_RouteHintHopDecodeErrorZ in the success state.
					public class func initWithOk(o: RouteHintHop) -> Result_RouteHintHopDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_RouteHintHopDecodeErrorZ_ok(o.dynamicallyDangledClone().cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Result_RouteHintHopDecodeErrorZ(cType: nativeCallResult, instantiationContext: "Result_RouteHintHopDecodeErrorZ.swift::\(#function):\(#line)")
						

						return returnValue
					}
		
					/// Creates a new CResult_RouteHintHopDecodeErrorZ in the error state.
					public class func initWithErr(e: DecodeError) -> Result_RouteHintHopDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_RouteHintHopDecodeErrorZ_err(e.danglingClone().cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Result_RouteHintHopDecodeErrorZ(cType: nativeCallResult, instantiationContext: "Result_RouteHintHopDecodeErrorZ.swift::\(#function):\(#line)")
						

						return returnValue
					}
		
					/// Frees any resources used by the CResult_RouteHintHopDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_RouteHintHopDecodeErrorZ_free(self.cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Creates a new CResult_RouteHintHopDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_RouteHintHopDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_RouteHintHopDecodeErrorZ>) in
				CResult_RouteHintHopDecodeErrorZ_clone(origPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Result_RouteHintHopDecodeErrorZ(cType: nativeCallResult, instantiationContext: "Result_RouteHintHopDecodeErrorZ.swift::\(#function):\(#line)")
						

						return returnValue
					}
		

					public func isOk() -> Bool {
						return self.cType?.result_ok == true
					}

					
					public func getError() -> DecodeError? {
						if self.cType?.result_ok == false {
							return DecodeError(cType: self.cType!.contents.err.pointee, instantiationContext: "Result_RouteHintHopDecodeErrorZ.swift::\(#function):\(#line)", anchor: self)
						}
						return nil
					}
					

					
					public func getValue() -> RouteHintHop? {
						if self.cType?.result_ok == true {
							return RouteHintHop(cType: self.cType!.contents.result.pointee, instantiationContext: "Result_RouteHintHopDecodeErrorZ.swift::\(#function):\(#line)", anchor: self)
						}
						return nil
					}
					

					internal func dangle(_ shouldDangle: Bool = true) -> Result_RouteHintHopDecodeErrorZ {
        				self.dangling = shouldDangle
						return self
					}

					
					internal func danglingClone() -> Result_RouteHintHopDecodeErrorZ {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing Result_RouteHintHopDecodeErrorZ \(self.instanceNumber).")
							
							self.free()
						} else {
							Bindings.print("Not freeing Result_RouteHintHopDecodeErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

			}
		