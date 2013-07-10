/**
 * Locale package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.swami.core
{
	/**
	 * Swami imports
	 */
	// import be.swami.load.JSON;

	/**
	 * Locale class
	 */
	public class Locale extends Model
	{
		// init variables
		private var currentLanguage:String;
		private var defaultLanguage:String;
		private var languages:Array;
		private var locale:Object = new Object();

		/**
		 * Locale
		 */
		public function Locale()
		{
			// @todo: set languages
			// @todo: set default language

			// set current language
			setCurrentLanguage('nl');
		}

		/**
		 * Get action
		 *
		 * @param string value
		 * @param string[optional] language
		 * @return string
		 */
		public function act(value:String, language:String = null):String
		{
			return getLocale('act', value, language);
		}

		/**
		 * Get error
		 *
		 * @param string value
		 * @param string[optional] language
		 * @return string
		 */
		public function err(value:String, language:String = null):String
		{
			return getLocale('err', value, language);
		}

		/**
		 * Get current language
		 *
		 * @return string
		 */
		public function getCurrentLanguage():String
		{
			// redefine current language if not set
			if(!this.currentLanguage)
			{
				this.currentLanguage = getDefaultLanguage();
			}

			// return current language
			return this.currentLanguage;
		}

		/**
		 * Get default language
		 *
		 * @return string
		 */
		public function getDefaultLanguage():String
		{			
			return (this.defaultLanguage) ? this.defaultLanguage : 'en';
		}

		/**
		 * Get locale value
		 *
		 * @param string type 		The type has to be: 'act', 'err', 'lbl' or 'msg'.
		 * @param string value 		The value you want to get.
		 * @param string language 	The preferred language you want to get the label for.
		 * @return string
		 */
		public function getLocale(type:String, value:String, language:String = null):String
		{
			// redefine language
			if(language == null) language = getCurrentLanguage();

			// language not already exists, load it
			if(!this.locale[language]) loadLocale(language);

			// return value
			return (this.locale[language][type][value] != undefined) ? this.locale[type][value] : '';
		}

		/**
		 * Get label
		 *
		 * @param string value
		 * @param string[optional] language
		 * @return string
		 */
		public function lbl(value:String, language:String = null):String
		{
			return getLocale('lbl', value, language);
		}

		/**
		 * Load locale
		 *
		 * @param string language
		 */
		private function loadLocale(language:String = null)
		{
			// redefine language
			if(language == null) language = getCurrentLanguage();

			// define filePath
			var filePath = '/frontend/cache/locale/' + language + '.json';

			// set string
			// @todo: load file content from filePath
			var string:String = '{"act":{"Archive":"archief"}}';

			// @todo: get + set data
			// @todo: apparently JSON will load when using Adobe Player V11 in publish settings
			//this.locale[language] = JSON.parse(string);
		}

		/**
		 * Get message
		 *
		 * @param string value
		 * @param string[optional] language
		 * @return string
		 */
		public function msg(value:String, language:String = null):String
		{
			return getLocale('msg', value, language);
		}

		/**
		 * Set current language
		 *
		 * @param string language
		 */
		public function setCurrentLanguage(language)
		{
			this.currentLanguage = language;
		}

		/**
		 * Set default language
		 *
		 * @param string language
		 */
		public function setDefaultLanguage(language)
		{
			this.defaultLanguage = language;
		}
	}
}
