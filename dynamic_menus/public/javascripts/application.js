// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

Event.addBehavior({

    "form.project select.project-country:change": function(ev) {
        Hobo.ajaxRequest(window.location.href, ['city-menu'], 
                         {params: Form.serializeElements([this]), method: 'get', spinnerNextTo: this, message: ""} )
    }
    
})