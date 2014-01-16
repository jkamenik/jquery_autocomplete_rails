jQuery Autocomplete Rails
=========================

Wraps the [jQuery Autocomplete](https://github.com/devbridge/jQuery-Autocomplete) library in a rails engine so that it can be used by the asset pipeline.  This gem includes the non-minified source code which the asset pipeline will minify in production.  It also includes a default CSS.

Installation
============

Add the following to your gem file

    gem 'jquery_autocomplete_rails'

Add the JS to your `application.js` or similar location

    //= require jquery.autocomplete

Add the CSS to your `application.css` or create your own version

    /*
     *= require jquery.autocomplete
     */

Usage
=====

Html:

    <input type="text" name="country" data-autocomplete="true"/>

Ajax lookup:

    $('[data-autocomplete="true"]').autocomplete({
        serviceUrl: '/autocomplete/countries'
    });

Local lookup (no ajax):

    var countries = [
       { value: 'Andorra', data: 'AD' },
       // ...
       { value: 'Zimbabwe', data: 'ZZ' }
    ];
    
    $('[data-autocomplete="true"]').autocomplete({
        lookup: countries
    });

For a full list of options check the [API](https://github.com/devbridge/jQuery-Autocomplete#api).

Versioning
==========

This gem's version will match the jQuery Autocomplete libraries version.  If a gem specific update is needed then we will add a 4th number of the version to indicate that the update was in the gem.

* gem 1.2.9 = library 1.2.9
* gem 1.3.0 = libary 1.3.0
* gem 1.3.0.1 = library 1.3.0 (but the gem needed to be updated)