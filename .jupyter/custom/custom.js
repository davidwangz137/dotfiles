// Configure CodeMirror
require([
  'nbextensions/vim_binding/vim_binding',   // depends your installation
], function() {
  // Swap j/k and gj/gk (Note that <Plug> mappings)
  CodeMirror.Vim.map("J", "10<Plug>(vim-binding-j)", "normal");
  CodeMirror.Vim.map("K", "10<Plug>(vim-binding-k)", "normal");

  // Function for repeating a key press
  CodeMirror.Vim.defineAction("n_press", function(cm, args){
      for(var i = 0; i < args['n']; i++){
          CodeMirror.Vim.handleKey(cm, args['key']);
      }
  });
  // We have to handle H and L in a different way
  CodeMirror.Vim.mapCommand("H", "action", "n_press", {'n': 10, 'key':'h'});
  CodeMirror.Vim.mapCommand("L", "action", "n_press", {'n': 10, 'key':'l'});
});

define([
    'base/js/namespace',
    'base/js/events'
    ], 
    function(IPython, events) {
        events.on("app_initialized.NotebookApp", 
            function () {
                require("notebook/js/cell").Cell.options_default.cm_config.lineNumbers = true;
                require("notebook/js/cell").IPython.Cell.options_default.cm_config.lineWrapping = true;
            }
        );
    }
);


