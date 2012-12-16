AA.Views.exerciseGnosias = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  initialize: function(){
    this.templateName = 'gnosias';
    this.templateItemName = 'gnosia-item-template'
    this.collection = new AA.Collections.gnosias();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.gnosias = _.flatten(this.collection.toJSON()[0]);
    $(this.el).html(Mustache.to_html($('.fn-' + this.templateName).html()), { length: this.gnosias.length });
    this.renderItems();
  }, 
  
  renderItems: function(){
    var self = this;
    _.each(this.gnosias, function(gnosia){
      $('.fn-gnosias-list').append(Mustache.to_html($('.fn-' + self.templateItemName).html(), { gnosia: gnosia }));
      exerciseItem = new AA.Views.exerciseGnosiaItem({ el: ".fn-item-gnosia-" + gnosia.id });
    });
  }
});
