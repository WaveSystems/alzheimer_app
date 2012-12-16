AA.Views.exerciseCalculus = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  events: {
    'click .fn-submit' : 'hideAndEvaluate'
  },

  initialize: function(){
    this.templateName = 'calculus';
    this.collection = new AA.Collections.calculus();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.template = Mustache.to_html($('.fn-' + this.templateName).html(), { questions: this.collection.toJSON() });
    this.questionsCount = this.collection.toJSON().length
    $(this.el).html(this.template);
  },

  hideAndEvaluate: function(e){
  }
});
