<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;


class Page extends SiteTree {

	private static $db = array(
		'Content1' => 'HTMLText',	
		'Content2' => 'HTMLText'
	);

	private static $has_one = array(
	);
	
		function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Main", new HTMLEditorField('Content1', 'Left Column'));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('Content2', 'Right Column'));
		$fields->removeFieldFromTab("Root.Main","Content");

		return $fields;
	}
}
