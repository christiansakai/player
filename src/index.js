require('ace-css/css/ace.css');
require('font-awesome/css/font-awesome.css');
require('./main.css')

const Elm = require('./App.elm')

const root = document.getElementById('root')

Elm.App.embed(root)
