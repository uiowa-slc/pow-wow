<?php
class Page extends SiteTree {

	public static $db = array(
		'Content1' => 'HTMLText',	
		'Content2' => 'HTMLText'
	);

	public static $has_one = array(
	);
	
		function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Content.Content1", new HTMLEditorField('Content1'));
		$fields->addFieldToTab("Root.Content.Content2", new HTMLEditorField('Content2'));
				$fields->removeFieldFromTab("Root.Content.Main","Content");

		return $fields;
	}


}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work

	}
}