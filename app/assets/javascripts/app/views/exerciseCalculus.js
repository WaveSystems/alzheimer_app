AA.Views.exerciseCalculus = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'calculus';
    this.templateItemName = 'item-calculus-template';
    this.collection = new AA.Collections.calculus();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.questions = this.collection.toJSON();
    $(this.el).html(Mustache.to_html($('.fn-' + this.templateName).html(), { length: this.questions.length, exercise_name: "cálculo" }));
    this.renderItems();
    
  },

  renderItems: function(){
    var self = this;
    _.each(this.questions, function(question){
      $('.fn-body-table').append(Mustache.to_html($('.fn-' + self.templateItemName).html(), { question: question }));
      exerciseItem = new AA.Views.exerciseCalculusItem({ el: ".fn-item-calculus-" + question.id });
    });
    $('.fn-answer')[0].focus();
  }
});
