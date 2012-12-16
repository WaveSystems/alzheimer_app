AA.Views.exerciseOrientation = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'orientation';
    this.collection = new AA.Collections.orientation();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.orientationItems = _.flatten(this.collection.toJSON()[0]);
    $(this.el).html(Mustache.to_html($('.fn-carrousel').html(), { message: "Responda las siguientes preguntas" , items: this.orientationItems }));
    $('.carousel').carousel();
  }
});
