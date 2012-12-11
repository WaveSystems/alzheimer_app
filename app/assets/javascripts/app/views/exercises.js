AA.Views.exercises = Backbone.View.extend({
  el: '.fn-exercises',

  events: {
    'click .fn-category' : 'changeButtonClass'
  },

  changeButtonClass: function(e){
    var currentTarget = $(e.target);
    $('.fn-category').removeClass('active');
    currentTarget.addClass('active');
    this.renderExerciseItem(currentTarget.attr('class'));
  },

  renderExerciseItem: function(className){
    var exerciseItem;
    switch (className) {
      case "btn fn-category calculus active":
        exerciseItem = new AA.Views.exerciseCalculus();
        break;
      case "btn fn-category gnosias active":
        exerciseItem = new AA.Views.exerciseGnosias();
        break;
      case "btn fn-category memory active":
        exerciseItem = new AA.Views.exerciseMemory();
        break;
      case "btn fn-category language active":
        exerciseItem = new AA.Views.exerciseLanguage();
        break;
      case "btn fn-category orientation active":
        exerciseItem = new AA.Views.exerciseOrientation();
        break;
      case "btn fn-category praxias active":
        exerciseItem = new AA.Views.exercisePraxias();
        break;
    }
  }
});
