<?php
class SecondaryJournal extends Page {

	private static $db = array(

	);

	private static $has_one = array(
		'Image' => 'Image'
	);

    private static $icon_class = 'font-icon-p-book';

	public function getCMSFields() {

		$fields = parent::getCMSFields();

		return $fields;
	}
	public function FeaturedIssue(){
		return $this->Children()->filter(array('ClassName' => 'Issue'))->First();
	}
}
