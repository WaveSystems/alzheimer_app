AA.Views.exerciseGnosiaItem = Backbone.View.extend({

  events: {
    'click .fn-selected-answer' : 'hideAndScore'
  },
  
  initialize: function(){
    this.gnosiaId = this.$el.find('.fn-this-id').val();
  },
  
  hideAndScore: function(e){
    var selectedAnswer = $(e.target).parent().text();
    this.$el.hide();
    this.evaluate();
  }, 
  
  evaluate: function(){
    var correctAnswers = this.$el.find('.fn-correct-answer').val().split(","),
        answer = this.$el.find('.fn-selected-answer').val(),
        questionsNumber = parseInt($('.fn-questions-number').val()),
        correctAnswersNumber = parseInt($('.fn-correct-answers-number').val()),
        answeredQuestionsNumber = parseInt($('.fn-answered-questions-number').val()),
        evaluatedAnswer = _.find(correctAnswers, function(correctAnswer){ return correctAnswer == answer });

    if ( evaluatedAnswer != undefined ) {
      correctAnswersNumber++;
      $('.fn-correct-answers-number').val(correctAnswersNumber);
    }

    answeredQuestionsNumber++;
    $('.fn-answered-questions-number').val(answeredQuestionsNumber);

    if (answeredQuestionsNumber == questionsNumber){
      $('.fn-finished-questions').modal('show');
      incorrectAnswersNumber = questionsNumber - correctAnswersNumber;
      $('.fn-correct-answers-count').html(correctAnswersNumber);
      $('.fn-incorrect-answers-count').html(incorrectAnswersNumber);
    }
  }

});
