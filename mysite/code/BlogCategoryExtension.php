<?php
 
class BlogCategoryExtension extends DataExtension {

	private static $belongs_many_many = array(
		'Homepages' => 'HomePage',
		'NewsHolders' => 'NewsHolder'
	);

  
}


