package org.slf4fp {
	import flash.events.IEventDispatcher;
	/**
	 * @author TK Kocheran <a href="mailto:rfkrocktk@gmail.com">&lt;rfkrocktk@gmail.com&gt;</a>
	 */
	public interface Logger extends IEventDispatcher {
		
		function getName():String;
		
		function get name():String;
		
		function get isTraceEnabled():Boolean;
		
		function trace(message:String, ...parameters):Logger;
		
		function get isDebugEnabled():Boolean;
		
		function debug(message:String, ...parameters):Logger;
		
		function get isInfoEnabled():Boolean;
		
		function info(message:String, ...parameters):Logger;
		
		function get isWarnEnabled():Boolean;
		
		function warn(message:String, ...parameters):Logger;
		
		function get isErrorEnabled():Boolean;
		
		function error(message:String, ...parameters):Logger;
	}
}
