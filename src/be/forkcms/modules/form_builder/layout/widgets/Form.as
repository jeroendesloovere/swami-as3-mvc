/**
 * Form package
 *
 * @author Jeroen Desloovere <info@jeroendesloovere.be>
 */
package be.forkcms.modules.form_builder.layout.widgets
{
	/**
	 * ForkCMS imports
	 */
	import be.forkcms.modules.form_builder.widgets.Form;
	import be.forkcms.modules.form_builder.engine.Model;

	/**
	 * Other imports
	 */
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	
	/**
	 * Form class
	 *
	 * Contains the visual elements the user interacts with.
	 * There generally shouldn't be any functionality that resides within this part of our triage.
	 */
	public class Form extends Sprite
	{
		// init core variables
		private var model:Model;
		private var controller:Form;

		/**
		 * Form
		 *
		 * @param Model model
		 */
		public function Form(model:Model)
		{
			this.model = model;
			controller = new Form(this, model);
		}

		/**
		 * Execute
		 */
		private function execute():void
		{
			nameInput.type = TextFieldType.INPUT;
			nameInput.background = nameInput.border = true;
			nameInput.width = 200;
			nameInput.height = 20;
			addChild(nameInput)
			addressInput.type = TextFieldType.INPUT;
			addressInput.background = addressInput.border = true;
			addressInput.width = 200;
			addressInput.height = 20;
			addressInput.y = 30;
			addChild(addressInput);
			submitButton.graphics.beginFill(0xCCCCCC);
			submitButton.graphics.drawRect(0,0,100, 20);
			submitButton.graphics.endFill();
			submitButton.addEventListener(MouseEvent.CLICK, submitButton_clickHandler);
			submitButton.buttonMode = true;
			submitButton.y = 60
			addChild(submitButton)
			textContainer.type = TextFieldType.INPUT;
			textContainer.background = true;
			textContainer.selectable = false;
			textContainer.width = 200;
			textContainer.height = 100;
			textContainer.y = 90;
			addChild(textContainer)
		}

		/**
		 * Submit button click handler
		 *
		 * @param MouseEvent e
		 */
		private function submitButton_clickHandler(event:MouseEvent):void
		{
			// dispatch submit button event
			dispatchEvent(new Event('submitButtonClick'))
		}
	}
}


