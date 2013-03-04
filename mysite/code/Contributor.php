<?php
class Contributor extends DataObjectAsPage {

 static $db = array(
        'Name' => 'Text',
        
    );
    
 static $has_one = array( 
 	'Image'=> 'Image'


 );
 
 public static $many_many = array(
 	'Articles' => 'Article'
 );   
 
 static $listing_page_class = 'Issue'; 
    
   public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName('Content');
        $fields->removeByName('Metadata');
        $fields->removeByName('Image');
        $fields->removeByName('Articles');
     
        $fields->addFieldToTab('Root.Main', new TextField('Name'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Biographical Details'));
     
        return $fields;
    }
    
    public function getTOC(){
	    $test = $this->Articles()->First()->Issue()->First();
	    return $test;
    }
    
    
    
   
    
      //SEE NOTE:
      
      //IS IT POSSIBLE THIS NEEDS TO BE LISTING_CLASS?  DOCUMENTATION IS UNCLEAR
    //static $listing_page_class = 'Issue'; 
}
