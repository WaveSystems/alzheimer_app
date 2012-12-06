AA.Views.exercises = Backbone.View.extend({
  el: '.fn-exercises',

  events: {
    'click .fn-category' : 'renderCategory'
  },

  initialize: function(){
    this.template = Mustache.to_html($('.exercise-one').html(), { message: 'Hello from mustache templates' });
  },

  renderCategory: function(e){
    $('.fn-category').removeClass('active');
    $(e.target).addClass('active');
    $('.exercises').html(this.template);
  }
});
