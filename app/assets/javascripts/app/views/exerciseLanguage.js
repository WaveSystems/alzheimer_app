AA.Views.exerciseLanguage = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'language';
    this.collection = new AA.Collections.language();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.template = Mustache.to_html($('.fn-' + this.templateName).html(), { languages: this.collection.models[0].get('languages') });
    $(this.el).html(this.template);
    $('.carousel').carousel();
  }
});
