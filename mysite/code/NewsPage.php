<?php

use SilverStripe\Blog\Model\Blog;
use SilverStripe\ORM\ArrayList;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\ORM\FieldType\DBDatetime;

class NewsPage extends BlogPost {
	private static $default_parent = 'NewsHolderPage';
	private static $db = array(
		'Date' => 'DBDatetime',
		'Abstract' => 'Text',
		'Author' => 'Varchar(255)',
		'FeaturedImageSmall' => 'Boolean'
	);

	private static $defaults = array(
		'InheritSideBar' => true,
	);

	public function RelatedPosts(){
		$holder = Blog::get()->First();
		$tags = $this->Tags()->limit(6);
		$entries = new ArrayList();

		foreach($tags as $tag){
			$taggedEntries = $tag->BlogPosts()->exclude(array("ID"=>$this->ID))->sort('PublishDate', 'ASC')->Limit(3);
			if($taggedEntries){
				foreach($taggedEntries as $taggedEntry){
					if($taggedEntry->ID){
						$entries->push($taggedEntry);
					}
				}
			}

		}

		if($entries->count() > 1){
			$entries->removeDuplicates();
		}

		return $entries;
	}


    public function getCMSFields(){
    	$fields = parent::getCMSFields();
    	$fields->addFieldToTab("Root.Main", new CheckboxField ("FeaturedImageSmall", "Show the featured image in a smaller format"), 'CustomSummary');
    	return $fields;

    }
}