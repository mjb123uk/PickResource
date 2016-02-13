<?php
/*
 * PickResource custom TV - input setup
 *
 * @var modX $this->modx
 * @var modTemplateVar $this
 * 
 */
class PickResourceInputRender extends modTemplateVarInputRender {
    public function process($value,array $params = array()) {
        /*
		$parents = $this->getInputOptions();
        $parents = !empty($params['parents']) || $params['parents'] === '0' ? explode(',',$params['parents']) : $parents;
        if (empty($parents) || (empty($parents[0]) && $parents[0] !== '0')) $parents = array();
	    $depth = !empty($params['depth']) ? $params['depth'] : 10;
		*/
		$rootid = !empty($params['rootid']) ? $params['rootid'] : 0;
		$roottext = "";
		if ($rootid > 0) {
			// get pagetitle for id
			$page = $this->modx->getObject('modResource', $rootid);
			if (is_object($page)) $roottext = $page->get('pagetitle').' ('.$rootid.')';
			else $rootid = 0;	// resource rootid not found
		}
        $excludes = !empty($params['excludes']) ? implode("~",explode(',',$params['excludes'])) : "";
        $opts = array("rootid" => $rootid, "roottext" => $roottext, "excludes" => $excludes);
        $this->setPlaceholder('opts',json_encode($opts));
    }
    public function getTemplate() {
        return $this->modx->getOption('core_path',null,MODX_CORE_PATH).'components/pickresource/tv/input/tpl/pickresource.tpl';
    }
}
return 'PickResourceInputRender';
