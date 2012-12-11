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
    switch (className) {
      case "btn fn-category calculus active":

        break;
      case "btn fn-category gnosias active":
        break;
      case "btn fn-category memory active":
        break;
      case "btn fn-category language active":
        break;
      case "btn fn-category orientation active":
        break;
      case "btn fn-category praxias active":
        break;
      default:
        break;
    }
  }
});
