<?php
class Translator extends Contributor {

 static $db = array(
  
    );
    
 static $has_one = array( 

 );
 
 public static $many_many = array(
 	'Articles' => 'Article'
 );   

    
   public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab("Root.Main", new TextField('ID', 'Translator ID'));
     
        return $fields;
    }
    
}
