AA.Views.exerciseMemory = Backbone.View.extend({
  el: '.fn-render-exercise-templates',

  events: {
    'click .fn-start' : 'startExercise',
    'slid .carousel'  : 'changeOptions',
    'click .fn-selected-answer' : 'hideAndScore'
  },

  initialize: function(){
    this.collection = new AA.Collections.memory();
    this.collection.bind('reset change', this.render, this); 
    this.collection.fetch();
  },

  render: function(){
    this.memoryItems = _.flatten(this.collection.toJSON()[0]);
    $(this.el).html(Mustache.to_html($('.fn-memory').html(), { message: "Responda las siguientes preguntas" , items: this.memoryItems, length: this.memoryItems.length }));
    $('.carousel').carousel('pause');
  }, 

  startExercise: function(e){
    $('.carousel').carousel('next');
    $('.fn-start').hide();
  },

  changeOptions: function(){
    var targetElement = $('.item.active'),
        correctAnswer = targetElement.find('.fn-correct-answer').val(),
        wrongAnswers = targetElement.find('.fn-incorrect-answers').val().split(',');
    $('.options').html(Mustache.to_html($('.fn-memories-options').html(), { correct_answer: correctAnswer, wrong_answers: wrongAnswers }));
    $('.carousel').carousel('pause');
  },

  hideAndScore: function(e){
    var selectedAnswer = $(e.target).val(),
        targetElement = $('.item.active'),
        correctAnswer = targetElement.find('.fn-correct-answer').val(),
        questionsNumber = parseInt($('.fn-questions-number').val()),
        correctAnswersNumber = parseInt($('.fn-correct-answers-number').val()),
        answeredQuestionsNumber = parseInt($('.fn-answered-questions-number').val());
    

    answeredQuestionsNumber++;
    $('.fn-answered-questions-number').val(answeredQuestionsNumber);

    if ( selectedAnswer === correctAnswer ) {
      correctAnswersNumber++;
      $('.fn-correct-answers-number').val(correctAnswersNumber);
    }
    incorrectAnswersNumber = questionsNumber - correctAnswersNumber;

    if (answeredQuestionsNumber === questionsNumber){
      $('.fn-finished-questions').modal('show');
      $('.fn-correct-answers-count').html(correctAnswersNumber);
      $('.fn-incorrect-answers-count').html(incorrectAnswersNumber);
      $('.options').html("<a class='btn btn-inverse fn-start'><h3>Comenzar</h3></a>");
      $('.fn-correct-answers-number').val(0);
      $('.fn-answered-questions-number').val(0);
      answeredQuestionsNumber = 0;
    }

    $('.fn-answers').hide();
    $('.carousel').carousel('next');
  }
});
