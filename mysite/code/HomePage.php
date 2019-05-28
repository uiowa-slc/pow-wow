<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
class HomePage extends Page {

	private static $db = array(
		'Event' => 'HTMLText',
		);

	private static $has_one = array(
	
	);
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Event', 'Main Feature (Top of Page)')->addExtraClass('stacked'), 'Content1');
		return $fields;
	}
}