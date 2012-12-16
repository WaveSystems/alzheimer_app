AA.Router = Backbone.Router.extend({
  routes: {
    "exercises"              : "exercises",
    "exercises/calculus"     : "calculus",
    "exercises/gnosias"      : "gnosias",
    "exercises/memory"       : "memory",
    "exercises/language"     : "language",
    "exercises/orientation"  : "orientation",
    "exercises/praxias"      : "praxias"
  },

  exercises: function(){
    this.exercises = new AA.Views.exercises();
  },

  calculus: function(){
    $('.fn-category').removeClass('active');
    $('.fn-category.calculus').addClass('active');
    this.exercises = new AA.Views.exercises();
    this.calculus = new AA.Views.exerciseCalculus();
  },

  gnosias: function(){
    $('.fn-category').removeClass('active');
    $('.fn-category.gnosias').addClass('active');
    this.exercises = new AA.Views.exercises();
    this.gnosias = new AA.Views.exerciseGnosias();
  },

  memory: function(){
    $('.fn-category').removeClass('active');
    $('.fn-category.memory').addClass('active');
    this.exercises = new AA.Views.exercises();
    this.memory = new AA.Views.exerciseMemory();
  },
  language: function(){
    $('.fn-category').removeClass('active');
    $('.fn-category.language').addClass('active');
    this.exercises = new AA.Views.exercises();
    this.language = new AA.Views.exerciseLanguage();
  },

  orientation: function(){
    $('.fn-category').removeClass('active');
    $('.fn-category.orientation').addClass('active');
    this.exercises = new AA.Views.exercises();
    this.orientation = new AA.Views.exerciseOrientation();
  },

  praxias: function(){
    $('.fn-category').removeClass('active');
    $('.fn-category.praxias').addClass('active');
    this.exercises = new AA.Views.exercises();
    this.praxias = new AA.Views.exercisePraxias();
  }
});
