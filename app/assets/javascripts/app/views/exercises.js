AA.Views.exercises = Backbone.View.extend({
  el: '.fn-exercises',

  events: {
    'click .fn-category' : 'changeButtonClass'
  },

  changeButtonClass: function(e){
    var currentTarget = $(e.target);
    this.renderExerciseItem(currentTarget.attr('class'));
  },

  renderExerciseItem: function(className){
    var exerciseItem;
    switch (className) {
      case "btn fn-category calculus":
        AA.router.navigate('exercises/calculus', true);
        break;
      case "btn fn-category gnosias":
        AA.router.navigate('exercises/gnosias', true);
        break;
      case "btn fn-category memory":
        AA.router.navigate('exercises/memory', true);
        break;
      case "btn fn-category language":
        AA.router.navigate('exercises/language', true);
        break;
      case "btn fn-category orientation":
        AA.router.navigate('exercises/orientation', true);
        break;
      case "btn fn-category praxias":
        AA.router.navigate('exercises/praxias', true);
        break;
    }
  }
});
