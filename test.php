<?php
/**
 * Created by Andrey Stepanenko.
 * User: webnitros
 * Date: 23.10.2020
 * Time: 14:56
 */
ini_set('display_errors', 1);
ini_set("max_execution_time", 50);
define('MODX_API_MODE', true);
require 'index.php';


$modx->addPackage('ms2gallery', MODX_CORE_PATH . 'components/ms2gallery/model/');
$files = $modx->getIterator('msProductFile', array('parent' => 0));
foreach ($files as $file) {
    $children = $file->getMany('Children');
    foreach ($children as $child) {
        $child->remove();
    }
    $file->generateThumbnails();
}