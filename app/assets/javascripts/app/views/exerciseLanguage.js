AA.Views.exerciseLanguage = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'language';
    this.collection = new AA.Collections.language();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.languageItems = _.flatten(this.collection.toJSON()[0]);
    $(this.el).html(Mustache.to_html($('.fn-carrousel').html(), { message: "Responda las siguientes preguntas" , items: this.languageItems }));
    $('.carousel').carousel({ interval: 60000 });
  }
});
