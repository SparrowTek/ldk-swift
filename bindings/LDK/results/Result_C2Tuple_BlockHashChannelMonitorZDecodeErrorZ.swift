public class Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ(contents: LDKCResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init()
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> DecodeError? {
				if self.cOpaqueStruct?.result_ok == false {
					return DecodeError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> C2Tuple_BlockHashChannelMonitorZ? {
				if self.cOpaqueStruct?.result_ok == true {
					return C2Tuple_BlockHashChannelMonitorZ(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: C2Tuple_BlockHashChannelMonitorZ) -> Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ {
    	
        return Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ(pointer: CResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ_ok(o.cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ {
    	
        return Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ(pointer: CResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing Result_C2Tuple_BlockHashChannelMonitorZDecodeErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    /* RESULT_METHODS_END */

}
