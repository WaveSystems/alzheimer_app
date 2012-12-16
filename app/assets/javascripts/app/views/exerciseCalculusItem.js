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
      this.$el.hide(true);
      $('.fn-answer')[this.questionId].focus();
      this.evaluate();
    }
  }, 
  
  evaluate: function(){
    var correctAnswers = this.$el.find('.fn-correct-answer').val().split(","),
        answer = this.$el.find('.fn-answer').val(),
        questionsNumber = parseInt($('.fn-questions-number').val()),
        correctAnswersNumber = parseInt($('.fn-correct-answers-number').val()),
        answeredQuestionsNumber = parseInt($('.fn-answered-questions-number').val());

    this.$el.find('.fn-answer').val('');

    if (answeredQuestionsNumber == questionsNumber){

    }
  }
});
