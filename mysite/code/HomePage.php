<?php

use EdgarIndustries\YouTubeField\YouTubeField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class HomePage extends Page {

	private static $db = array(
		'Event' => 'HTMLText',
		'EnableStream' => 'Boolean',
		'StreamVideoID' => 'Varchar(11)',
	);

	private static $has_one = array(

	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', CheckboxField::create('EnableStream', 'Enable Livestream'));
		$fields->addFieldToTab('Root.Main', YoutubeField::create('StreamVideoID', 'Livestream YouTube Link'));
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Event', 'Main Feature (Top of Page)')->addExtraClass('stacked'), 'Content1');

		return $fields;
	}
}
