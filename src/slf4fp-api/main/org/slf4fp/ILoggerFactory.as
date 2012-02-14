package org.slf4fp {
	/**
	 * @author TK Kocheran <a href="mailto:rfkrocktk@gmail.com">&lt;rfkrocktk@gmail.com&gt;</a>
	 */
	public interface ILoggerFactory {
		
		function getLogger(name:String):Logger;
	}
}
