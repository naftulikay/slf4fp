package org.slf4fp.impl {
	import org.slf4fp.ILoggerFactory;

	import flash.errors.IllegalOperationError;
	/**
	 * @author TK Kocheran <a href="mailto:rfkrocktk@gmail.com">&lt;rfkrocktk@gmail.com&gt;</a>
	 */
	public class StaticLoggerBinder {
		
		private static const SINGLETON:StaticLoggerBinder = new StaticLoggerBinder();
		
		public static const REQUESTED_API_VERSION:String = "0.1";
		
		public static function getSingleton():StaticLoggerBinder {
			return SINGLETON;
		}
		
		function StaticLoggerBinder() {
			throw new IllegalOperationError("This code should have never been compiled!");
		}
		
		public function getILoggerFactory():ILoggerFactory {
			throw new IllegalOperationError("This code should nave never been compiled!");
		}
		
		public function getILoggerFactoryClassStr():String {
			throw new IllegalOperationError("This code should nave never been compiled!");
		}
	}
}
