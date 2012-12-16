AA.Views.exerciseCalculusItem = Backbone.View.extend({

  events: {
    'click .fn-send'    : 'hideAndScore',
    'keypress .fn-answer' : 'hideAndScore'
  },
  
  initialize: function(){
    this.questionId = this.$el.find('.fn-this-id').val();
  },
  
  hideAndScore: function(e){
    if (e.keyCode == 13 || e.type == "click"){
      var answer = this.$el.find('.fn-answer').val();
      this.$el.find('.fn-answer').val('');
      this.$el.hide(true);
      $('.fn-answer')[this.questionId].focus();
    }
  }

});
