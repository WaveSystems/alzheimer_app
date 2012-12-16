AA.Views.exerciseCalculusItem = Backbone.View.extend({

  events: {
    'click .fn-send'    : 'hideAndScore',
    'keypress .fn-answer' : 'hideAndScore'
  },

  hideAndScore: function(e){
    if (e.keyCode == 13 || e.type == "click"){
      var answer = this.$el.find('.fn-answer').val();
      this.$el.find('.fn-answer').val('');
      this.$el.hide(true);
    }
  }

});
