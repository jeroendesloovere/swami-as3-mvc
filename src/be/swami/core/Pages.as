/**
 * Pages package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.swami.core
{
	/**
	 * Pages class
	 */
	public class Pages extends Model
	{
		// init variables
		private var currentPageId:int;
		private var pages:Array;

		/**
		 * Pages
		 */
		public function Pages(){}

		/**
		 * add page
		 *
		 * @param array page
		 */
		public function add(page:Array)
		{
			this.pages[page['id']] = page;
		}

		/**
		 * Get page
		 *
		 * @param int pageId
		 */
		public function get(pageId:int)
		{
			return this.pages[pageId];
		}

		/**
		 * Get title for page
		 *
		 * @param int pageId[optional]
		 * @return string
		 */
		public function getTitle(pageId:int = 0)
		{
			// redefine pageId
			if(pageId == 0) pageId = this.currentPageId;

			// return title
			return (this.pages[pageId]) ? this.pages[pageId]['title'] : '';
		}

		/**
		 * Get description for page
		 *
		 * @param int pageId[optional]
		 * @return string
		 */
		public function getDescription(pageId:int = 0)
		{
			// redefine pageId
			if(pageId == 0) pageId = this.currentPageId;

			// return description
			return (this.pages[pageId]) ? this.pages[pageId]['description'] : '';
		}
	}
}
