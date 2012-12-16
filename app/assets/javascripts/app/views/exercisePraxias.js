AA.Views.exercisePraxias = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'praxias';
    this.collection = new AA.Collections.praxias();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.praxiaItems = _.flatten(this.collection.toJSON()[0]);
    $(this.el).html(Mustache.to_html($('.fn-carrousel').html(), { message: "Responda las siguientes preguntas" , items: this.praxiaItems }));
    $('.carousel').carousel();
  }
});
