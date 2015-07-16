<?php
/*
Theme Name: Bootstrap Default
Version: 1.0.0-rc1
Description: A modern and responsive theme for Piwigo built with standard Bootstrap components and using the default Bootstrap theme. Intended for easy customisation using Bootstrap styles or as a parent theme for creating responsive themes for Piwigo.
Theme URI: http://piwigo.org/ext/extension_view.php?eid=796
Author: Phil Bayfield (philb)
Author URI: https://philio.me/
*/
require_once(PHPWG_THEMES_PATH . 'bootstrapdefault/include/themecontroller.php');
require_once(PHPWG_THEMES_PATH . 'bootstrapdefault/include/config.php');

$themeconf = array(
    'name' => 'bootstrapdefault',
    'parent' => 'default',
    'colorscheme' => 'clear',
    'load_parent_css' => false,
    'load_parent_local_head' => false,
    'local_head' => 'local_head.tpl',
    'img_dir' => 'themes/bootstrapdefault/img',
    'url' => 'https://philio.me/'
);

$controller = new \BootstrapDefault\ThemeController();
$controller->init();