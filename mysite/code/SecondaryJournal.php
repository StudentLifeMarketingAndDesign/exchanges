<?php
class SecondaryJournal extends Page {

	private static $db = array(


	);

	private static $has_one = array(
		'Image' => 'Image'
	);


	public function getCMSFields() {

		$fields = parent::getCMSFields();

		return $fields;
	}

	public function FeaturedIssue(){
		return $this->Children()->First();
	}
}
