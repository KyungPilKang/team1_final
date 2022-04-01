const Editor = toastui.Editor;
const editor = new Editor({
    el: document.querySelector('#editor'),
    height: '600px',
    toolbarItems: [
        ['heading', 'bold', 'italic', 'strike', 'hr'],
        ['ul', 'ol', 'task'],
        ['table', 'image', 'link'],
        ['code', 'codeblock'],
        ['scrollSync'],
    ],
    initialEditType: 'wysiwyg',
    previewStyle: 'tab'
});