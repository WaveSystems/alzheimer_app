AA.Views.exerciseCalculusItem = Backbone.View.extend({

  events: {
    'click .fn-send'    : 'hideAndScore',
    'keypress .fn-answer' : 'hideAndScore'
  },
  
  initialize: function(){
    this.questionId = this.$el.find('.fn-this-id').val();
  },
  
  hideAndScore: function(e){
    var nextElement = $('.fn-answer')[this.questionId];
    if (e.keyCode == 13 || e.type == "click"){
      this.$el.hide(true);
      if ( nextElement != undefined ) {
        nextElement.focus();
      }
      this.evaluate();
    }
  }, 
  
  evaluate: function(){
    var correctAnswers = this.$el.find('.fn-correct-answer').val().split(","),
        answer = this.$el.find('.fn-answer').val(),
        questionsNumber = parseInt($('.fn-questions-number').val()),
        correctAnswersNumber = parseInt($('.fn-correct-answers-number').val()),
        answeredQuestionsNumber = parseInt($('.fn-answered-questions-number').val()),
        evaluatedAnswer = _.find(correctAnswers, function(correctAnswer){ return correctAnswer == answer });

    this.$el.find('.fn-answer').val('');

    if ( evaluatedAnswer != undefined ) {
      correctAnswersNumber++;
      $('.fn-correct-answers-number').val(correctAnswersNumber);
    }

    answeredQuestionsNumber++;
    $('.fn-answered-questions-number').val(answeredQuestionsNumber);

    console.log("Respuestas correctas: " + correctAnswersNumber);
    console.log("Preguntas contestadas: " + answeredQuestionsNumber);
    console.log("---------------------------------");

    if (answeredQuestionsNumber == questionsNumber){
      $('.fn-finished-questions').modal('show');
    }
  }
});
