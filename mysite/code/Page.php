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
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Content1', 'Left Column')->addExtraClass('stacked'));
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Content2', 'Right Column')->addExtraClass('stacked'));
		$fields->removeFieldFromTab("Root.Main","Content");

		$fields->dataFieldByName('Content1')
                ->addExtraClass('stacked');

		return $fields;
	}
}
