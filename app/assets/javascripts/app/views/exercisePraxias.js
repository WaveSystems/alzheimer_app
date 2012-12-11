AA.Views.exercisePraxias = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'praxias';
    this.collection = new AA.Collections.praxias();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.template = Mustache.to_html($('.fn-' + this.templateName).html(), { praxias: this.collection.models[0].get('praxia') });
    $(this.el).html(this.template);
    $('.carousel').carousel();
  }
});
