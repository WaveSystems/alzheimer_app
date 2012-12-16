AA.Views.exerciseCalculusItem = Backbone.View.extend({
  el: '.fn-item-calculus',

  events: {
    'click .fn-send'    : 'hideAndScore',
    'keypress .fn-answer' : 'hideAndScore'
  },

  hideAndScore: function(e){
    if (e.keyCode == 13 || e.type == "click"){
      var answer = $('.fn-answer').val();
      console.log(answer);
      $('.fn-answer').val('');
    }
  }

});
