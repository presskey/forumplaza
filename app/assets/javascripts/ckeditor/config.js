UPLOADCARE_PUBLIC_KEY = "demopublickey"; //set publick key for Uploadcare
UPLOADCARE_LOCALE = 'ru'; //set locale if you wish
CKEDITOR.config.extraPlugins = 'uploadcare';
CKEDITOR.config.language = 'ru';
CKEDITOR.config.toolbar = [
  { name: 'document', items : [ 'Source','-','ShowBlocks','-','Save','NewPage','DocProps','Preview','Print','-','Templates' ] },
  { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
  { name: 'editing', items : [ 'Find','Replace','-','SelectAll' ] },
  { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
  { name: 'links', items : [ 'Link','Unlink','Anchor' ] },
  { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv',
  '-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
  { name: 'insert', items : [ 'Flash','Table','HorizontalRule','SpecialChar','PageBreak','Iframe','Uploadcare' ] },
  '/',
  { name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
  { name: 'colors', items : [ 'TextColor','BGColor' ] }
];