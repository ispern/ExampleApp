/*global Front, Backbone*/
define(['backbone', 'models/Blog'], function(Backbone, Blog) {
    'use strict';

    return Backbone.Collection.extend({
        model: Blog
    });
});
