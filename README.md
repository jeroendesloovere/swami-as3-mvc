# Swami AS 3.0 MVC

Swami is a Flash-based ActionScript 3.0 Model View Controller which connects to Fork CMS.

## Ideas

### 20130319

#### Pages

`contact = new Page();`


#### Locale

`this.locale = new Locale();`


#### Custom Forms

`
	function loadForm()
	{
		this.frm = new Form('formName');
	
		this.frm.addText('firstName');
		this.frm.addTextarea('message');
	}
`

`
	function validateForm()
	{
		this.frm.getField('firstName')->isFilled('BL::err()');
	}
`


### 20120822

#### Core functionalities - Controls the MVC structure

* be.siesqo.core.Controller - This class will handle the controllers.
* be.siesqo.core.Database - This class will handle the database actions.
* be.siesqo.core.Debug - This class will handle the debugging.
* be.siesqo.core.Language - This class will store the language-dependant content for the Backend, it will also store the current language for the user.
* be.siesqo.core.Navigation - This class will be used to build the navigation
* be.siesqo.core.Model - In this file we store all generic functions that we will be using in the backend.
* be.siesqo.core.Url - This class will handle the incoming URL.
* be.siesqo.core.View - This class will handle the views.


#### Loader

be.siesqo.loader.Controller
be.siesqo.loader.Model
be.siesqo.loader.View


### before 20120822

#### Core functionalities - Controls the MVC structure

* be.siesqo.core.Controller
* be.siesqo.core.Model
* be.siesqo.core.View


#### Controllers

* be.siesqo.controllers.Navigation (-> handles all pages, seo, push state to browser, history)


#### Models

* be.siesqo.models.Navigation	(-> contains page tree)
* be.siesqo.models.PagedNavigation	(-> contains navigation using numbers)


#### Views

* be.siesqo.views.Button	(-> implements new movieclip)
* be.siesqo.views.FullScreenImage
* be.siesqo.views.ImageSlider
* be.siesqo.views.Navigation


#### Remoting

* be.siesqo.remoting.Remote
* be.siesqo.remoting.Database


#### Utilities - Extends AS3.0

* be.siesqo.utils.Debug 	(-> com.carlcalderon.arthropod.Debug)
* be.siesqo.utils.Image
* be.siesqo.utils.Movie
* be.siesqo.utils.Preloader
* be.siesqo.utils.Sound
* be.siesqo.utils.Scrollbar
* be.siesqo.utils.Url
