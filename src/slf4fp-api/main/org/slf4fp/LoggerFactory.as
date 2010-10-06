package org.slf4fp {
	import org.slf4fp.impl.StaticLoggerBinder;
	import flash.errors.IllegalOperationError;
	import flash.utils.getQualifiedClassName;

	/**
	 * @author TK Kocheran <a href="mailto:rfkrocktk@gmail.com">&lt;rfkrocktk@gmail.com&gt;</a>
	 */
	public final class LoggerFactory {
		
		private static const UNINITIALIZED:String = "uninitialized";
		
		private static const INITIALIZATION_SUCCESS:String = "initialization success";
		
		private static const INITIALIZATION_FAILED:String = "initialization failed";
		
		private static var initializationState:String = UNINITIALIZED;
		
		public static function getLogger(type:Class):Logger {
			return getLoggerByName(getQualifiedClassName(type).replace("::","."));
		}
		
		public static function getLoggerByName(name:String):Logger {
			return getILoggerFactory().getLogger(name);
		}
		
		public static function getILoggerFactory():ILoggerFactory {
			if (initializationState == UNINITIALIZED) {
				bind();
			} else if (initializationState == INITIALIZATION_FAILED) {
				throw new IllegalOperationError("Initialization previously failed, unable to return a logger.");
			}
			
			return StaticLoggerBinder.getSingleton().getILoggerFactory();
		}
		
		private static function bind():void {
			try {
				StaticLoggerBinder.getSingleton();
				initializationState = INITIALIZATION_SUCCESS;
			} catch(e0:TypeError) {
				initializationState = INITIALIZATION_FAILED;
				throw new Error("Couldn't initialize SLF4FP: initialization failed: " + e0.getStackTrace());
			} catch(e1:Error) {
				initializationState = INITIALIZATION_FAILED;
				throw new Error("Couldn't initialize SLF4FP: initialization failed: " + e1.getStackTrace());
			}
		}
	}
}
