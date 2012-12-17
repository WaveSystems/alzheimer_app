AA.Views.exerciseGnosiaItem = Backbone.View.extend({

  events: {
    'click .fn-selected-answer' : 'hideAndScore'
  },
  
  initialize: function(){
    this.gnosiaId = this.$el.find('.fn-this-id').val();
  },
  
  hideAndScore: function(e){
    var selectedAnswer = $(e.target).val();
    this.$el.hide();
    this.evaluate(selectedAnswer);
  }, 
  
  evaluate: function(selectedAnswer){
    var correctAnswer = this.$el.find('.fn-correct-answer').val(),
        questionsNumber = parseInt($('.fn-questions-number').val()),
        correctAnswersNumber = parseInt($('.fn-correct-answers-number').val()),
        answeredQuestionsNumber = parseInt($('.fn-answered-questions-number').val()),
        incorrectAnswersNumber;

    if ( correctAnswer === selectedAnswer ){
      correctAnswersNumber++;
      $('.fn-correct-answers-number').val(correctAnswersNumber);
    }

    incorrectAnswersNumber = questionsNumber - correctAnswersNumber;
    answeredQuestionsNumber++;
    $('.fn-answered-questions-number').val(answeredQuestionsNumber);

    if (answeredQuestionsNumber == questionsNumber){
      $('.fn-finished-questions').modal('show');
      $('.fn-correct-answers-count').html(correctAnswersNumber);
      $('.fn-incorrect-answers-count').html(incorrectAnswersNumber);
    }

    console.log('Respuesta correcta: ' + correctAnswer);
    console.log('Respuesta elegida: ' + selectedAnswer);
    console.log('Respuestas correctas: ' + correctAnswersNumber);
    console.log('Respuestas incorrectas: ' + incorrectAnswersNumber);
    console.log('Respuestas totales: ' + questionsNumber);
    console.log('Respuestas contestadas: ' + answeredQuestionsNumber);
    console.log('-----------------------------------------');
  }

});
