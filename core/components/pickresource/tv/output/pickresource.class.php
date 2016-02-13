<?php
/*
 * PickResource custom TV - output setup
 *
 * @var modX $modx
 * @var array $params
 * @var string $value
 *
 */
 if(!class_exists('PickResourceOutputRender')) {
	class PickResourceOutputRender extends modTemplateVarOutputRender {
	    public function process($value,array $params = array()) {
	        if (empty($value)) return $value;
	        $o = '';
	        $w = explode("(",$value);
	        $title = trim($w[0]);
	        $id = trim(str_replace(")","",$w[1]));
	        $o = '<a href="[[~'.$id.']]">'.$title.'</a>';
	        return $o;
	    }
	}
}
return 'PickResourceOutputRender';
