<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
class HomePage extends Page {

	private static $db = array(
		'Event' => 'HTMLText',
		);

	private static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('Event', 'Main Feature (Top of Page)'), 'Content1');
		return $fields;
	}
}