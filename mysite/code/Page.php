<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Control\Session;
use SilverStripe\Blog\Model\BlogCategory;
use SilverStripe\ORM\ArrayList;
use SilverStripe\Dev\Debug;

class Page extends SiteTree {


	private static $db = array(
		'DropdownMenu' => 'Boolean',
	);

	private static $has_one = array();
	private static $has_many = array();

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Main", new CheckboxField ("DropdownMenu", "Show dropdown menu for this page"), 'Content');
		return $fields;
	}

	public function NextPage() {
		$page = Page::get()->filter(array(
				'ParentID'         => $this->ParentID,
				'Sort:GreaterThan' => $this->Sort,
			))                          ->First();

		return $page;
	}
	public function PreviousPage() {
		$page = Page::get()->filter(array(
				'ParentID'      => $this->ParentID,
				'Sort:LessThan' => $this->Sort,
			))->Last();

		return $page;
	}

    // Wrapper hack for missing FeaturedIssue() calls somewhere in the codebase
	public function FeaturedIssue() {
        return $this->getCurrentIssue();
	}

	public function getCurrentIssue() {
		$currentIssue = HomePage::get()->First();
		$sessionIssue = $currentIssue->FeaturedIssue();
		return $sessionIssue;
	}

	public function getAllIssues() {
		$issueArray = Issue::get();
		return $issueArray;
	}

	public function BlogCategories(){
		return BlogCategory::get()->sort('Title ASC');
	}

	public function getSecondaryJournal(){

		if(!$this->isSecondaryJournal()){
			return null;
		}

		if($this->ClassName == 'SecondaryJournal')
			return $this;

		$parent = false;

		while($parent == false){
			$parent = $this->Parent();
			if(($parent) && ($parent->ClassName == 'SecondaryJournal')){
				return $parent;
			}
		}



	}

	public function isSecondaryJournal() {
		$ancestors = new ArrayList();
		$ancestors = $this->getAncestors();

		if( strcmp( $this->ClassName, "SecondaryJournal" ) == 0 ) {
			return true;
		}

		foreach( $ancestors as $ancestor ) {
			if (strcmp($ancestor->ClassName, "SecondaryJournal") == 0) {
				return true;
			}
		}
		return false;
	}
}
