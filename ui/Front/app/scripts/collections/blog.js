/*global Front, Backbone*/
define(['backbone', 'models/blog'], function(Backbone, Blog) {
    'use strict';

    return Backbone.Collection.extend({
        model: Blog
    });
});
