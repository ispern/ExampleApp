/*global Front, Backbone*/
define('backbone', function(Backbone) {
    'use strict';

    return Backbone.Model.extend({

        url: '',

        initialize: function() {
        },

        defaults: {
        },

        validate: function(attrs, options) {
        },

        parse: function(response, options)  {
            return response;
        }
    });
});
