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
        exerciseItem = new AA.Views.exerciseItem('calculus');
        break;
      case "btn fn-category gnosias active":
        exerciseItem = new AA.Views.exerciseItem('gnosias');
        break;
      case "btn fn-category memory active":
        exerciseItem = new AA.Views.exerciseItem('memory');
        break;
      case "btn fn-category language active":
        exerciseItem = new AA.Views.exerciseItem('language');
        break;
      case "btn fn-category orientation active":
        exerciseItem = new AA.Views.exerciseItem('orientation');
        break;
      case "btn fn-category praxias active":
        exerciseItem = new AA.Views.exerciseItem('praxias');
        break;
      default:
        break;
    }
  }
});
