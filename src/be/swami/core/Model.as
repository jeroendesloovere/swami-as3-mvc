/**
 * Model package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.swami.core
{
	/**
	 * Imports
	 */
	import flash.events.Event;
	import flash.events.EventDispatcher;

	/**
	 * Model class
	 * Stores data and when changed, dispatches events
	 */
	public class Model extends EventDispatcher
	{
		// init variables
		public static const SOME_DATA_CHANGED:String = 'someDataChanged'
		private var _someData:String = '';

		/**
		 * Model
		 */
		public function Model()
		{
	
		}

		/**
		 * Set some data
		 *
		 * @param String value
		 * @return void
		 */
		public function set someData(value:String):void
		{
			_someData = value;
			dispatchEvent( new Event( SOME_DATA_CHANGED ) );
		}

		/**
		 * Get some data
		 *
		 * @return String
		 */
		public function get someData():String
		{
			return _someData;
		}
	}
}

/**
 * Examples: possible functions
 *
	// set setting
	model.setting('test', 'this is the value');

	// get setting
	trace(model.setting('test'));
*/