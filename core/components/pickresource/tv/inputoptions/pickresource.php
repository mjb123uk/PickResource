<?php
/*
 * PickResource custom TV - Input Options
 */  
$corePath = $modx->getOption('daterangetv.core_path', null, $modx->getOption('core_path').'components/pickresource/');
return $modx->smarty->fetch($corePath.'tv/inputoptions/tpl/pickresource.tpl');
