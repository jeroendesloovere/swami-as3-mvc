/**
 * Filter package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.swami.library
{
	/**
	 * Filter class
	 */
	public class Filter
	{
		/**
		 * Filter constructor
		 */
		public function Filter(){}

		/**
		 * Is an array
		 *
		 * @param mixed value
		 * @return bool
		 */
		public static function isArray(value)
		{
			// TODO
		}

		/**
		 * Is an integer
		 *
		 * @param mixed value
		 * @return bool
		 */
		public static function isInteger(value)
		{
			return (value == Math.round(value));
		}

		/**
		 * Is a valid emailaddress
		 *
		 * @param mixed value
		 * @return bool
		 */
		public static function isEmail(value)
		{
			// define regular expression
			var regExpPattern:RegExp = /^[0-9a-zA-Z][-._a-zA-Z0-9]*@([0-9a-zA-Z][-._0-9a-zA-Z]*\.)+[a-zA-Z]{2,4}$/;

			// return
			return (value.match(regExpPattern) !== null);
		}

		/**
		 * Is a valid website url
		 *
		 * @param mixed value
		 * @return bool
		 */
		public static function isWebsite(value)
		{
			return (value.indexOf("http://") >= 0 || value.indexOf("https://") >= 0);
		}
	}
}
