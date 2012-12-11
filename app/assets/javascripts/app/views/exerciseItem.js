AA.Views.exerciseItem = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(templateName){
    this.template = Mustache.to_html($('.fn-' + templateName).html(), { message: 'Hello from ' + templateName });
    this.render(); 
  },

  render: function(){
    $(this.el).html(this.template);
  }
});
