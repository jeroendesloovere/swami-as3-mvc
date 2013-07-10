/**
 * ForkApplication package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.forkcms.core
{
	/**
	 * Swami imports
	 */
	import be.swami.core.Application;

	/**
	 * ForkApplication class
	 */
	public class ForkApplication extends Application
	{
		/**
		 * ForkApplication constructor
		 *
		 * @param this application This object should created using 'this'.
		 */
		public function ForkApplication(application:Object)
		{
			// define application
			this.application = application;

			// load
			loadSettings();
			loadLocale();
			loadPages();

			// execute
			this.execute();
		}

		/**
		 * Load locale
		 */
		public function loadLocale()
		{
			// @todo: from /frontend/cache/locale/LANGUAGE.json
		}

		/**
		 * Load pages
		 */
		public function loadPages()
		{
			// @todo: from /frontend/cache/navigation/ "keys_LANGUAGE.php" and "navigation_LANGUAGE.php"
		}

		/**
		 * Load settings
		 */
		public function loadSettings()
		{
			// @todo: from /library/parameters.yaml
			
			
		}
	}
}
