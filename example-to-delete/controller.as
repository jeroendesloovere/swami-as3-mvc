/**
 * Controller package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.swami.core
{
	/**
	 * Swami imports
	 */
	import be.swami.core.Model;
	import be.swami.core.View;

	/**
	 * Other imports
	 */
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * Controller class
	 */
	public class Controller
	{
		// init variables
		private var model:Model;
		private var view:View;

		/**
		 * Controller
		 *
		 * @param View view
		 * @param Model model
		 */
		public function Controller(view:View, model:Model)
		{
			// define variables
			this.model = model;
			this.view = view;

			// add events
			this.model.addEventListener(Model.SOME_DATA_CHANGED, modelChanged);
			this.view.addEventListener('submitButtonClick', submitButtonClicked);
		}

		/**
		 * Submit button clicked
		 *
		 * @param MouseEvent event
		 */
		public function submitButtonClicked(e:MouseEvent):void
		{
			if(view.addressInput.text && view.nameInput.text)
			{
				this.model.someData = view.nameInput.text + '\n' + view.addressInput.text;
			}
		}

		/**
		 * Model changed
		 *
		 * @param Event e
		 */
		private function modelChanged(e:Event):void
		{
			view.nameInput.text = view.addressInput.text = '';
			view.textContainer.text = this.model.someData;
		}
	}
}
