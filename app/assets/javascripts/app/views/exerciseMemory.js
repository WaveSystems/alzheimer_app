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
    $(this.el).html(Mustache.to_html($('.fn-memory').html(), { message: "Responda las siguientes preguntas" , items: this.memoryItems }));
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
  },

  hideAndScore: function(e){
    var selectedAnswer = $(e.target).val(),
        correctAnswer = $('.fn-correct-answer').val();
    $('.fn-answers').hide();
    $('.carousel').carousel('next');
  }
});
