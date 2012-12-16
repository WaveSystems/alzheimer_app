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
    this.template = Mustache.to_html($('.fn-' + this.templateName).html());
    $(this.el).html(this.template);
    this.renderItems();
  },

  renderItems: function(){
    var self = this;
    _.each(this.collection.toJSON(), function(question){
      var templateItem = Mustache.to_html($('.fn-' + self.templateItemName).html(), {question: question});
      $('.fn-body-table').append(templateItem);
      exerciseItem = new AA.Views.exerciseCalculusItem({ el: ".fn-item-calculus-" + question.id });
    });
  }
});
