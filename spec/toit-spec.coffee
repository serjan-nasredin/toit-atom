path = require "path";
fs = require "fs";
TextEditor = null;
buildTextEditor = (param) ->
    if atom.workspace.buildTextEditor?
        atom.workspace.buildTextEditor(param);
    else
        TextEditor ?= require("atom").TextEditor;
        new TextEditor(param);
