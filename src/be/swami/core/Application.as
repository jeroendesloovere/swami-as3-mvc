/**
 * Application package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.swami.core
{
	/**
	 * Swami imports
	 */
	import be.swami.core.Locale;
	import be.swami.core.Navigation;
	import be.swami.core.Settings;

	/**
	 * Application class
	 */
	public class Application
	{
		// init variables
		public var application:Object;
		public var locale:Locale;
		public var navigation:Navigation;
		public var settings:Settings;

		/**
		 * Application constructor
		 */
		public function Application()
		{
			// define variables
			this.settings = new Settings();
			this.locale = new Locale();
			this.navigation = new Navigation();
		}

		/**
		 * Execute
		 */
		public function execute()
		{
			// check if we have external parameters inserted using javascript?
			checkForExternalParameters();
		}

		/**
 		 * Check for external parameters
		 */
		private function checkForExternalParameters()
		{
			// define external variables
			var external:Object = this.application.root.loaderInfo.parameters;

			// url is externally defined
			if(external.hasOwnProperty('url'))
			{
				// navigate to url
				this.navigation.goto(external.url);
			}
		}
	}
}
