<?php

use EdgarIndustries\YouTubeField\YouTubeField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;

class HomePage extends Page {

	private static $db = array(
		'Event' => 'HTMLText',
		'EnableStream' => 'Boolean',
		'StreamVideoID' => 'Varchar(11)',
		'StreamCaption' => 'Text',
		'StreamChannelLink' => 'Text',
	);

	private static $has_one = array(

	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', CheckboxField::create('EnableStream', 'Enable Livestream')->setDescription('<b>Important: This must be checked in order for the stream link to show. </b>'), 'Content1');
		$fields->addFieldToTab('Root.Main', TextField::create('StreamChannelLink', 'Stream Channel Link')->setDescription('Shows the "View Livestream" button with a link to this channel'), 'Content1');
		$fields->addFieldToTab('Root.Main', YoutubeField::create('StreamVideoID', 'Livestream YouTube Link'), 'Content1');

		$fields->addFieldToTab('Root.Main', TextField::create('StreamCaption', 'Stream Caption')->setDescription('Shows below the video'), 'Content1');
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Event', 'Main Feature (Top of Page)')->addExtraClass('stacked'), 'Content1');

		return $fields;
	}
}
