#if SWIFT_PACKAGE
import LDKHeaders
#endif

public typealias MultiThreadedLockableScore = Bindings.MultiThreadedLockableScore

extension Bindings {

	public class MultiThreadedLockableScore: NativeTypeWrapper {

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cOpaqueStruct: LDKMultiThreadedLockableScore?


		/* DEFAULT_CONSTRUCTOR_START */
		public init(score: Score) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			
			self.cOpaqueStruct = MultiThreadedLockableScore_new(score.activate().cOpaqueStruct!)
			super.init(conflictAvoidingVariableName: 0)
			try? self.addAnchor(anchor: score)

		}
		/* DEFAULT_CONSTRUCTOR_END */

		public init(pointer: LDKMultiThreadedLockableScore){
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cOpaqueStruct = pointer
			super.init(conflictAvoidingVariableName: 0)
		}

		public init(pointer: LDKMultiThreadedLockableScore, anchor: NativeTypeWrapper){
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cOpaqueStruct = pointer
			super.init(conflictAvoidingVariableName: 0)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		/* STRUCT_METHODS_START */

		public func as_LockableScore() -> NativelyImplementedLockableScore {
			
			return NativelyImplementedLockableScore(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKMultiThreadedLockableScore>) in
MultiThreadedLockableScore_as_LockableScore(this_argPointer)
}, anchor: self);
		}

		public func write() -> [UInt8] {
			
			return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKMultiThreadedLockableScore>) in
MultiThreadedLockableScore_write(objPointer)
}, callerContext: "MultiThreadedLockableScore::write");
		}

		public func as_WriteableScore() -> NativelyImplementedWriteableScore {
			
			return NativelyImplementedWriteableScore(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKMultiThreadedLockableScore>) in
MultiThreadedLockableScore_as_WriteableScore(this_argPointer)
}, anchor: self);
		}

		internal func free() -> Void {
			
			return MultiThreadedLockableScore_free(self.cOpaqueStruct!);
		}

					internal func dangle() -> MultiThreadedLockableScore {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing MultiThreadedLockableScore \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing MultiThreadedLockableScore \(self.instanceNumber) due to dangle.")
						}
					}
				

		/* STRUCT_METHODS_END */

	}

}
