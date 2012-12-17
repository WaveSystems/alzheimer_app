AA.Views.exerciseMemory = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.collection = new AA.Collections.memory();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.memoryItems = _.flatten(this.collection.toJSON()[0]);
    $(this.el).html(Mustache.to_html($('.fn-memory').html(), { message: "Responda las siguientes preguntas" , items: this.memoryItems }));
    $('.carousel').carousel();
  }
});
