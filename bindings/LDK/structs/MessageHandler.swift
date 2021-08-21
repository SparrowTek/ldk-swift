public class MessageHandler: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    public internal(set) var cOpaqueStruct: LDKMessageHandler?


	/* DEFAULT_CONSTRUCTOR_START */
    public init(chan_handler_arg: ChannelMessageHandler, route_handler_arg: RoutingMessageHandler) {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	
        self.cOpaqueStruct = MessageHandler_new(chan_handler_arg.cOpaqueStruct!, route_handler_arg.cOpaqueStruct!)
        super.init()
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKMessageHandler){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init()
	}

    /* STRUCT_METHODS_START */

    public func get_chan_handler() -> ChannelMessageHandler {
    	
        return NativelyImplementedChannelMessageHandler(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKMessageHandler>) in
MessageHandler_get_chan_handler(this_ptrPointer)
}.pointee, anchor: self);
    }

    public func set_chan_handler(val: ChannelMessageHandler) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKMessageHandler>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return MessageHandler_set_chan_handler(this_ptrPointer, val.cOpaqueStruct!);
    }

    public func get_route_handler() -> RoutingMessageHandler {
    	
        return NativelyImplementedRoutingMessageHandler(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKMessageHandler>) in
MessageHandler_get_route_handler(this_ptrPointer)
}.pointee, anchor: self);
    }

    public func set_route_handler(val: RoutingMessageHandler) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKMessageHandler>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return MessageHandler_set_route_handler(this_ptrPointer, val.cOpaqueStruct!);
    }

    internal func free() -> Void {
    	
        return MessageHandler_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> MessageHandler {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing MessageHandler \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing MessageHandler \(self.instanceNumber) due to dangle.")
						}
					}
				

    /* STRUCT_METHODS_END */

}
