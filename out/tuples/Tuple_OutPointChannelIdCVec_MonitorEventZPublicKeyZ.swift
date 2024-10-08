#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A tuple of 4 elements. See the individual fields for the types contained.
internal typealias Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ = Bindings
	.Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ

extension Bindings {

	/// A tuple of 4 elements. See the individual fields for the types contained.
	internal class Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ?

		internal init(cType: LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(
			cType: LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ, instantiationContext: String,
			anchor: NativeTypeWrapper
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ, instantiationContext: String,
			anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		internal convenience init(tuple: (OutPoint, ChannelId, [MonitorEvent], [UInt8]), instantiationContext: String) {
			self.init(a: tuple.0, b: tuple.1, c: tuple.2, d: tuple.3, instantiationContext: instantiationContext)
		}


		/// Creates a new tuple which has the same data as `orig`
		/// but with all dynamically-allocated buffers duplicated in new buffers.
		internal func clone() -> Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) {
					(origPointer: UnsafePointer<LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ>) in
					C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ(
				cType: nativeCallResult,
				instantiationContext: "Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)"
			)


			return returnValue
		}

		/// Creates a new C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ from the contained elements.
		public init(a: OutPoint, b: ChannelId, c: [MonitorEvent], d: [UInt8], instantiationContext: String) {
			// native call variable prep

			let cVector = Vec_MonitorEventZ(
				array: c,
				instantiationContext: "Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)"
			)
			.dangle()

			let dPrimitiveWrapper = PublicKey(
				value: d,
				instantiationContext: "Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)"
			)


			// native method call
			let nativeCallResult = C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ_new(
				a.dynamicallyDangledClone().cType!, b.dynamicallyDangledClone().cType!, cVector.cType!,
				dPrimitiveWrapper.cType!)

			// cleanup

			// cVector.noOpRetain()

			// for elided types, we need this
			dPrimitiveWrapper.noOpRetain()


			/*
						// return value (do some wrapping)
						let returnValue = Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ(cType: nativeCallResult, instantiationContext: "Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)


		}

		/// Frees any resources used by the C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}


		public func getValue() -> (OutPoint, ChannelId, [MonitorEvent], [UInt8]) {
			return (self.getA(), self.getB(), self.getC(), self.getD())
		}


		/// The element at position 0
		public func getA() -> OutPoint {
			// return value (do some wrapping)
			let returnValue = OutPoint(
				cType: self.cType!.a,
				instantiationContext:
					"Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)", anchor: self
			)
			.dangle()

			return returnValue
		}

		/// The element at position 1
		public func getB() -> ChannelId {
			// return value (do some wrapping)
			let returnValue = ChannelId(
				cType: self.cType!.b,
				instantiationContext:
					"Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)", anchor: self
			)
			.dangle()

			return returnValue
		}

		/// The element at position 2
		public func getC() -> [MonitorEvent] {
			// return value (do some wrapping)
			let returnValue = Vec_MonitorEventZ(
				cType: self.cType!.c,
				instantiationContext:
					"Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)", anchor: self
			)
			.dangle().getValue()

			return returnValue
		}

		/// The element at position 3
		public func getD() -> [UInt8] {
			// return value (do some wrapping)
			let returnValue = PublicKey(
				cType: self.cType!.d,
				instantiationContext:
					"Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ.swift::\(#function):\(#line)", anchor: self
			)
			.dangle().getValue()

			return returnValue
		}


		internal func danglingClone() -> Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}
}
