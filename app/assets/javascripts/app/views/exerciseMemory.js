AA.Views.exerciseMemory = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'memory';
    this.collection = new AA.Collections.memory();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.template = Mustache.to_html($('.fn-' + this.templateName).html(), { memories: this.collection.models[0].get('memoria') });
    $(this.el).html(this.template);
    $('.carousel').carousel();
  }
});
