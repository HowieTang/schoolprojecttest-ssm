/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
// 在这里定义对默认配置的更改
	
	// 工具栏组排列，优化为两个工具栏行
	config.toolbarGroups = [
		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
		{ name: 'links' },
		{ name: 'insert' },
		{ name: 'forms' },
		{ name: 'tools' },
		{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'others' },
		'/',
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
		{ name: 'styles' },
		{ name: 'colors' },
	];

	// 删除标准插件提供的一些按钮，这些按钮在标准工具栏中是不需要的
	config.removeButtons = 'Underline,Subscript,Superscript';

	// 设置最常见的块元素
	config.format_tags = 'p;h1;h2;h3;pre';

	// 简化对话框窗口
	config.removeDialogTabs = 'image:advanced;link:advanced';
	
	//清空图像预览框中的文字 
	config.image_previewText=' ';
	
};
