public class Result_boolPeerHandleErrorZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_boolPeerHandleErrorZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_boolPeerHandleErrorZ(contents: LDKCResult_boolPeerHandleErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_boolPeerHandleErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init()
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> PeerHandleError? {
				if self.cOpaqueStruct?.result_ok == false {
					return PeerHandleError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> Bool? {
				if self.cOpaqueStruct?.result_ok == true {
					return self.cOpaqueStruct!.contents.result.pointee
				}
				return nil
			}
			
    public class func ok(o: Bool) -> Result_boolPeerHandleErrorZ {
    	
        return Result_boolPeerHandleErrorZ(pointer: CResult_boolPeerHandleErrorZ_ok(o));
    }

    public class func err(e: PeerHandleError) -> Result_boolPeerHandleErrorZ {
    	
        return Result_boolPeerHandleErrorZ(pointer: CResult_boolPeerHandleErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_boolPeerHandleErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_boolPeerHandleErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing Result_boolPeerHandleErrorZ \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing Result_boolPeerHandleErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_boolPeerHandleErrorZ {
    	
        return Result_boolPeerHandleErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_boolPeerHandleErrorZ>) in
CResult_boolPeerHandleErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_boolPeerHandleErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
