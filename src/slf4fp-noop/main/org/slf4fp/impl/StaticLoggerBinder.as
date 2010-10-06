package org.slf4fp.impl {
	import org.slf4fp.ILoggerFactory;
	/**
	 * @author TK Kocheran <a href="mailto:rfkrocktk@gmail.com">&lt;rfkrocktk@gmail.com&gt;</a>
	 */
	public class StaticLoggerBinder {
		
		private static var SINGLETON:StaticLoggerBinder;
		
		public static function getSingleton():StaticLoggerBinder {
			return SINGLETON;
		}
		
		private var loggerFactory:NoOpLoggerFactory = new NoOpLoggerFactory();
		
		function StaticLoggerBinder() {
			
		}
		
		public function getILoggerFactory():ILoggerFactory {
			return loggerFactory;
		}
		
		public function getILoggerFactoryClassStr():String {
			return "org.slf4fp.impl.StaticLoggerBinder$NoOpLoggerFactory";
		}
	}
}
import org.slf4fp.ILoggerFactory;
import org.slf4fp.Logger;

import flash.events.EventDispatcher;

class NoOpLoggerFactory implements ILoggerFactory {
	
	public function getLogger(name:String) : Logger {
		return new NoOpLogger();
	}

	public function getLoggers() : Vector.<Logger> {
		return new Vector.<Logger>();
	}

	public function setLoggers(value:Vector.<Logger>) : void {
//		do nothing.	
	}
}

class NoOpLogger extends EventDispatcher implements Logger {
	
	public function getName() : String {
		return null;
	}

	public function trace(message:String, ...parameters) : Logger {
		return this;
	}

	public function debug(message:String, ...parameters) : Logger {
		return this;
	}

	public function info(message:String, ...parameters) : Logger {
		return this;
	}

	public function warn(message:String, ...parameters) : Logger {
		return this;
	}

	public function error(message:String, ...parameters) : Logger {
		return this;
	}

	public function get name() : String {
		return null;
	}

	public function get isTraceEnabled() : Boolean {
		return false;
	}

	public function get isDebugEnabled() : Boolean {
		return false;
	}

	public function get isInfoEnabled() : Boolean {
		return false;
	}

	public function get isWarnEnabled() : Boolean {
		return false;
	}

	public function get isErrorEnabled() : Boolean {
		return false;
	}
}
